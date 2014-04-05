class String

  # The Main Toc Driver.
  #
  # Example:
  #   puts 'Hello World'.red
  #   puts 'Hello World'.red_on_black
  #   puts 'Hello World'.red_on_black.underline

  COLOURS = {
    'black'      => 30,
    'red'        => 31,
    'green'      => 32,
    'yellow'     => 33,
    'purple'     => 34,
    'pink'       => 35,
    'light_blue' => 36
  }

  STYLES = {
    'bold'      => 1,
    'underline' => 4,
    'inverse'  => 7
  }

  COLOURS.each do |colour, val|
    define_method(colour) do
      change val
    end

    COLOURS.each do |background, bg_val|
      define_method("#{colour}_on_#{background}") do
        change val, background: background
      end
    end
  end

  STYLES.each do |colour, val|
    define_method(colour) do
      change val
    end
  end

  def change(colour_code, options = {})
    if options[:background] && COLOURS[options[:background]]
      "\e[#{colour_code};#{COLOURS[options[:background]] + 10}m#{self}\e[0m"
    else
      "\e[#{colour_code}m#{self}\e[0m"
    end
  end
end

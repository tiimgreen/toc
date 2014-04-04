class String

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
    'reversed'  => 7
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
    if options[:background]
      bg = COLOURS[options[:background]].to_i + 10
      "\e[#{colour_code};#{bg}m#{self}\e[0m"
    else
      "\e[#{colour_code}m#{self}\e[0m"
    end
  end
end

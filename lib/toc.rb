class String
  def change(colour_code)
    "\033[#{color_code}m#{self}\033[0m"
  end

  def black
    change 30
  end

  def red
    change 31
  end

  def green
    change 32
  end

  def yellow
    change 33
  end

  def pink
    change 34
  end

  def purple
    change 35
  end

  def light_blue
    change 36
  end
end

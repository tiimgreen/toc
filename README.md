# Toc (.to_c) [![Build Status](https://travis-ci.org/tiimgreen/toc.svg?branch=master)](https://travis-ci.org/tiimgreen/toc)

Toc is a simple Ruby Gem allowing you to colour outputs to the console.

### Inspiration

Toc inspired by [tco](https://github.com/pazdera/tco) and [colored](https://github.com/defunkt/colored). It is written with simplicity and usability in mind.

### Usage

To install Toc via RubyGems:

```bash
$ gem install toc
```

#### Full List of Colours:

- Black
- Red
- Green
- Yellow
- Purple
- Pink
- Light Blue

All methods convert colour names to `snake_case`.

#### Forground Colour

```ruby
puts 'Hello World'.red
puts 'Hello World'.yellow
puts 'Hello World'.green
```

![Foreground Colour](http://i.imgur.com/B4Tk3b0.png)

#### Background Colour

```ruby
puts 'Hello World'.red_on_black
puts 'Hello World'.black_on_light_blue
puts 'Hello World'.green_on_pink
```

![Background Colour](http://i.imgur.com/3Epyel6.png)

#### Additional Styles

```ruby
puts 'The text will be Bold!'.bold
puts 'The text will be Underlined!'.underline
puts 'The text will be Inversed!'.inverse
```

![Styling](http://i.imgur.com/hRVskD3.png)

# Toc

Toc, inspired by [tco](https://github.com/pazdera/tco) and [colored](https://github.com/defunkt/colored), is a simple Ruby Gem allowing you to colour any outputs to the console.

### Usage

#### Full List of Colours:

- Black
- Red
- Green
- Yellow
- Purple
- Pink
- Light Blue

All methods convert names to snake_case.

#### Forground Colour

```ruby
puts 'Hello World'.red
puts 'Hello World'.yellow
puts 'Hello World'.green
```

#### Background Colour

```ruby
puts 'Hello World'.red_on_black
puts 'Hello World'.yellow_on_light_blue
puts 'Hello World'.green_on_red
```

#### Additional Styles

```ruby
puts 'The text will be Bold!'.bold
puts 'The text will be Underlined!'.underline
puts 'The colour will be Reversed!'.reverse
```

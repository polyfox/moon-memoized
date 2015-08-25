Moon Memoized
=============
[![Build Status](https://travis-ci.org/polyfox/moon-memoized.svg?branch=master)](https://travis-ci.org/polyfox/moon-memoized)
[![Test Coverage](https://codeclimate.com/github/polyfox/moon-memoized/badges/coverage.svg)](https://codeclimate.com/github/polyfox/moon-memoized)
[![Inline docs](http://inch-ci.org/github/polyfox/moon-memoized.svg?branch=master)](http://inch-ci.org/github/polyfox/moon-memoized)
[![Code Climate](https://codeclimate.com/github/polyfox/moon-memoized/badges/gpa.svg)](https://codeclimate.com/github/polyfox/moon-memoized)

## Usage
```ruby
class MyObject
  extend Moon::Memoized

  memoize_attr(:name, 'Eggo')
  memoize_attr(:age) { 18 }
  memoize_attr(:name_length) { name.length }
end

obj = MyObject.new
obj.name #=> Eggo
obj.age #=> 18
obj.name_length #=> 4
```

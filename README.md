# iterate

TODO: Write a gem description

## Installation

Add this line to your application's Gemfile:

    gem 'iterate'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install iterate

## Usage

Objectクラスに'Object#iterate(&block)'を追加.
iterateは遅延シーケンス [self, block.call(self), block.call(block.call(self)), ...] を返します.

```ruby
require 'iterate'

1.iterate(&:succ).first(5) # => [1, 2, 3, 4, 5]
1.iterate{|n| n * 3}.first(5) # => [1, 3, 9, 27, 81]

fib = [0, 1].iterate{|a, b| [b, a + b]}.map(&:first)

fib.first(5) # => [0, 1, 1, 2, 3]
fib.take_while{|n| n < 100} # => [0, 1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89]
```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request


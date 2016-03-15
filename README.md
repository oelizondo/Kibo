# Kibo

Small API for sorting and finding elements in arrays and other data structures.

###What's so good about it?

Almost everything is O(logn) or O(nlogn).

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'kibo'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install kibo

## Usage

Kibo is really easy to use, you just have to:

```ruby
Kibo::Search.bsearch(your_array, your_element)
```

Kibo will return true if the element exists in your array. Right now, ```.sbearch``` method only works wih integers, other data types will come later!

## Benchmarks

Write benchmarks

##TODO

* Write benchmarks for all methods
* Wrtie tests for all methods
* Implement sorts
* Implement other search methods


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).


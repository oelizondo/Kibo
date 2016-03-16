# Kibo

Small API for sorting and finding elements in arrays and other data structures.

###What's so good about it?

Almost everything is O(logn) or O(nlogn).

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'kibo-rb'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install kibo-rb

## Usage

Kibo is really easy to use, you just have to:

```ruby
require 'kibo' #not kibo-rb

Kibo::Search.bsearch(your_array, your_element)
```

Kibo also comes with a Native option

```ruby
require 'kibo' #not kibo rb

a = (1..1_000_000).to_a
a.binsearch(563_321)
```

Kibo Native overrides the Array class to include the method ```binsearch``` so you don't have to make additional objects.
Kibo will return true if the element exists in your array. Right now, ```.sbearch``` method only works wih integers, other data types will come later!

## Benchmarks
This is the performance of kibo:
```ruby
require 'benchmark'
require 'kibo'

a = (1..1000).to_a
b = (1..100_000).to_a
c = (1..1_0000_000).to_a
d = (1..2_000_000).to_a
e = (1..10_000_000).to_a
f = (1..20_000_000).to_a

#1000 elements
time1 = Benchmark.realtime do
  Kibo::Search.bsearch(a, 342)
end

#100_000 elements
time2 = Benchmark.realtime do
  Kibo::Search.bsearch(b, 56_321)
end

#1_000_000 elements
time3 = Benchmark.realtime do
  Kibo::Search.bsearch(c, 421_342)
end

#2_000_000 elements
time4 = Benchmark.realtime do
  Kibo::Search.bsearch(d, 1_321_123)
end

#10_000_000 elements
time5 = Benchmark.realtime do
  Kibo::Search.bsearch(e, 3_941_311)
end

#20_000_000 elements
time6 = Benchmark.realtime do
  Kibo::Search.bsearch(f, 12_321_125)
end
```

Which yielded: (respectively)
```console
  Time elapsed: 0.012903001334052533 miliseconds
  Time elapsed: 0.00821600406197831 miliseconds
  Time elapsed: 0.01727400376694277 miliseconds
  Time elapsed: 0.013912998838350177 miliseconds
  Time elapsed: 0.018266997358296067 miliseconds
  Time elapsed: 0.025380999431945384 miliseconds
```
##TODO

* ~Write benchmarks for all methods~
* Write tests for all methods
* Implement sorts
* Implement other search methods


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).


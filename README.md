# EachWithTimeInterval

Iterates through an array with the required minimal time intervals (including the time required to process a single array element). Might be useful working with Twitter API when you are sure you are going to brake all the limits!

## Installation

Add this line to your application's Gemfile:

    gem 'each_with_time_interval'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install each_with_time_interval

## Usage

For instance this code

    arry = [1, 2, 3, 4, 5]

    arry.each_with_time_interval(2) do |el|
      # do something
    end

runs in 8 seconds, and this code

    arry = [1, 2, 3, 4, 5]

    arry.each_with_time_interval(2) do |el|
      sleep 1
    end

runs in 9 seconds (1 extra second on a sleep on a last iteration), and

    arry = [1, 2, 3, 4, 5]

    arry.each_with_time_interval(2) do |el|
      sleep 3
    end

runs in 15 seconds ignoring the interval 2.

Methods #each_slice_with_time_interval(slice, interval)

    arry.each_slice_with_time_interval(3, 1) do |el_slice|
      # do something
    end

and #each_with_index_and_time_interval(interval)

    arry.each_with_index_and_time_interval(2) do |el, i|
      # do something
    end

are available too!

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

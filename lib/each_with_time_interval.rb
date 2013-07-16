# require "each_with_time_interval/version"

module EachWithTimeInterval
  def each_with_time_interval(interval, &blk)
    intervalize(interval, blk, :each)
  end

  def each_slice_with_time_interval(slice, interval, &blk)
    intervalize(interval, blk, :each_slice, slice)
  end

  def each_with_index_and_time_interval(interval, &blk)
    intervalize(interval, blk, :each)
  end

private

  def intervalize(interval, blk, iterator_method, *args)
    next_loop = Time.now
    i = 0
    self.send(iterator_method, *args) do |el|
      (next_loop - Time.now).tap { |delta| sleep delta if delta > 0 }
      next_loop = Time.now + interval
      blk.call(el, i)
      i += 1
    end
  end
end

class Array
  include EachWithTimeInterval
end
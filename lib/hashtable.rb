require 'gibberish'

# custom implementation of a hashtable in ruby
class Hashtable
  attr_reader :size, :buckets
  attr_accessor :num_values
  def initialize(size_of_array, list)
    @size          = 0
    @buckets       = Array.new(size_of_array).map! { list.new }
    @size_of_array = size_of_array
  end

  def set(key, value)
    fail 'please use a string for input' unless key.is_a?(String) || value.is_a?(String)
    @buckets[hash(key)].insert(key, value)
    @size += 1
    value
  end

  def get(key)
    fail 'please use a string for input' unless key.is_a? String
    @buckets[hash(key)].search(key)
  end

  def delete(key)
    # should remove the value at key, and return value
    value = @buckets[hash(key)].remove(key)
    @size -= 1
    value
  end

  def hash(key)
    Gibberish::SHA1(key).hex % @size_of_array
  end
end

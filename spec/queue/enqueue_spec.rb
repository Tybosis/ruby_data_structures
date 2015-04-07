require 'spec_helper'
require 'queue'

describe 'enqueue' do
  it 'adding one node updates tail' do
    @queue = Queue.new
    @queue.enqueue('Hello')
    @queue.tail.value.must_equal 'Hello'
  end

  it 'adding second node updates head' do
    @queue = Queue.new
    @queue.enqueue('second')
    @queue.enqueue('first')
    @queue.head.value.must_equal 'first'
    @queue.tail.value.must_equal 'second'
  end

  it 'adding mutiple values updates head and keeps tail the same' do
    @queue = Queue.new
    @queue.enqueue('fourth')
    @queue.enqueue('third')
    @queue.enqueue('second')
    @queue.enqueue('first')
    @queue.head.value.must_equal 'first'
    @queue.tail.value.must_equal 'fourth'
  end
end

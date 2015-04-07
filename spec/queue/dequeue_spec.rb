require 'spec_helper'
require 'queue'

describe 'dequeue' do
  it 'removes only node if there is only one node' do
    @queue = Queue.new
    @queue.enqueue('Hello')
    @queue.tail.value.must_equal 'Hello'
    @queue.dequeue
    @queue.tail.must_be_nil
  end

  it 'removes last node if there are multiple values' do
    @queue = Queue.new
    @queue.enqueue('second')
    @queue.enqueue('first')
    @queue.head.value.must_equal 'first'
    @queue.tail.value.must_equal 'second'
    @queue.dequeue
    @queue.tail.must_equal 'first'
  end
end

require 'spec_helper'
require 'queue'

describe 'dequeue' do
  before do
    @queue = Queue.new
  end

  it 'removes only node if there is only one node' do
    @queue.enqueue('Hello', Node)
    @queue.tail.value.must_equal 'Hello'
    @queue.dequeue
    @queue.tail.must_be_nil
  end

  it 'removes last node if there are multiple values' do
    @queue.enqueue('second', Node)
    @queue.enqueue('first', Node)
    @queue.head.value.must_equal 'first'
    @queue.tail.value.must_equal 'second'
    @queue.dequeue
    @queue.tail.value.must_equal 'first'
  end

  it 'raises error if dequeue is called on an empty queue' do
    exception = proc { @queue.dequeue }.must_raise RuntimeError
    exception.message.must_equal 'Queue is empty. Nothing to dequeue!'
  end
end

require 'spec_helper'
require 'queue'

describe 'enqueue' do
  it 'will be zero if queue is empty' do
    @queue = Queue.new
    @queue.size.must_equal 0
  end

  it 'will be one if queue has one node' do
    @queue = Queue.new
    @queue.enqueue 'first'
    @queue.size.must_equal 1
  end

  it 'will update as more nodes get added' do
    @queue = Queue.new
    @queue.enqueue 'third'
    @queue.enqueue 'second'
    @queue.size.must_equal 2
    @queue.enqueue 'first'
    @queue.size.must_equal 3
    @queue.dequeue
    @queue.size.must_equal 2
    @queue.dequeue
    @queue.size.must_equal 1
  end
end

require 'spec_helper'
require 'queue'

describe 'enqueue' do
  before do
    @queue = Queue.new
  end

  it 'will be zero if queue is empty' do
    @queue.size.must_equal 0
  end

  it 'will be one if queue has one node' do
    @queue.enqueue('first', Node)
    @queue.size.must_equal 1
  end

  it 'will update as more nodes get added' do
    @queue.enqueue('third', Node)
    @queue.enqueue('second', Node)
    @queue.size.must_equal 2
    @queue.enqueue('first', Node)
    @queue.size.must_equal 3
    @queue.dequeue
    @queue.size.must_equal 2
    @queue.dequeue
    @queue.size.must_equal 1
  end
end

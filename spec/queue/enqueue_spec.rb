require 'spec_helper'
require 'queue'

describe 'enqueue' do
  before do
    @queue = Queue.new
  end

  it 'adding one node updates tail' do
    @queue.enqueue('Hello', Node)
    @queue.tail.value.must_equal 'Hello'
  end

  it 'adding second node updates head' do
    @queue.enqueue('second', Node)
    @queue.enqueue('first', Node)
    @queue.head.value.must_equal 'first'
    @queue.tail.value.must_equal 'second'
  end

  it 'adding mutiple values updates head and keeps tail the same' do
    @queue.enqueue('fourth', Node)
    @queue.enqueue('third', Node)
    @queue.enqueue('second', Node)
    @queue.enqueue('first', Node)
    @queue.head.value.must_equal 'first'
    @queue.tail.value.must_equal 'fourth'
  end
end

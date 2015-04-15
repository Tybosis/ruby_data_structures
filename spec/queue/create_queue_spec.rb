require 'spec_helper'
require 'queue'

describe 'queue' do
  it 'should be able to create a new queue' do
    @queue = Queue.new
    @queue.class.must_equal Queue
  end
end

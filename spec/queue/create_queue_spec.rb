require 'spec_helper'
require 'queue'

describe 'queue' do
  it 'should be able to create a new queue' do
    @queue = Queue.new
  end

  it 'should exist' do
    @queue.wont_be_nil
  end
end

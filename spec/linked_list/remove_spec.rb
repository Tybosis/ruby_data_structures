require 'spec_helper'
require 'linked_list'

describe 'linked_list' do
  before do
    @list = LinkedList.new(1)
  end

  it 'should have a remove method that works' do
    add_node
    @list.remove 'hello world'
    @list.search('hello world').must_equal nil
  end

  it 'should return nil if item does not exist' do
    @list.remove(9001).must_equal nil
  end

  it 'should remove an item from the middel of a list' do
    add_node
    @list.insert 'this is a test'
    @list.insert 'this is also a test'
    @list.insert 'this will show up first!'
    @list.remove 'this is also a test'
    @list.search('this is also a test').must_equal nil
  end
end

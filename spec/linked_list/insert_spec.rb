require 'spec_helper'
require 'linked_list'

describe 'linked_list' do
  before do
    @list = LinkedList.new(1)
  end

  it 'should have an insert method that works' do
    add_node
    @list.head.value.must_equal 'hello world'
  end

  it 'should be able to insert multiple times' do
    add_node
    @list.insert 'the question'
    @list.head.value.must_equal 'the question'
    @list.head.value.wont_equal 'hello world'
  end

  it 'should have a remove duplicates' do
    @list = LinkedList.new(21)
    @list.insert(10)
    @list.insert(11)
    @list.insert(21)
    @list.insert(31)
    @list.insert(10)
    @list.insert(50)
    @list.remove_duplicates
    p @list
  end
end

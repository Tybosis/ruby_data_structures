require 'spec_helper'
require 'linked_list'

describe 'linked_list' do
  before do
    @list = LinkedList.new(1, Linked_Node)
  end

  it 'should have a remove method that works' do
    add_node
    @list.remove('hello world', Linked_Node)
    @list.search('hello world').must_equal nil
  end

  it 'should return nil if item does not exist' do
    @list.remove(9001, Linked_Node).must_equal nil
  end

  it 'should remove an item from the middel of a list' do
    add_node
    @list.insert('this is a test', Linked_Node)
    @list.insert('this is also a test', Linked_Node)
    @list.insert('this will show up first!', Linked_Node)
    @list.remove('this is also a test', Linked_Node)
    @list.search('this is also a test').must_equal nil
  end

  it 'should remove the last item from the list' do
    @list.insert('this is a test', Linked_Node)
    @list.insert('this is also a test', Linked_Node)
    @list.insert('this will show up first!', Linked_Node)
    @list.remove('this is a test', Linked_Node)
    @list.search('this is a test').must_equal nil
  end
end

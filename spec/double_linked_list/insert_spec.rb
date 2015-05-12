require 'spec_helper'
require 'doubly_linked_list'

describe 'doubly linked list' do

  before do
    @double = DoubleLinkedList.new(1, Linked_Node)
  end

  it 'should have an insert method' do
    @double.head.value.must_equal 1
    @double.insert(2, Linked_Node)
    @double.head.value.must_equal 2
    @double.tail.value.must_equal 1
  end

  it 'should be able to insert multiple value' do
    @double.insert(2, Linked_Node)
    @double.insert(3, Linked_Node)
    @double.head.value.must_equal 3
    @double.head.next_node.value.must_equal 2
    @double.head.next_node.next_node.value.must_equal 1
  end
end

require 'spec_helper'
require 'doubly_linked_list'

describe 'doubly linked list' do
  before :each do
    @double = DoubleLinkedList.new(1, Linked_Node)
  end

  it 'should have a remove method' do
    @double.remove 1
    @double.head.must_equal nil
    @double.tail.must_equal nil
  end

  it 'should be able to delete head if only head and tail' do
    @double.insert(2, Linked_Node)
    @double.remove 2
    @double.head.must_equal @double.tail
    @double.head.value.must_equal 1
  end

  it 'should be able to delete tail if only head and tail' do
    @double.insert(2, Linked_Node)
    @double.remove 1
    @double.head.must_equal @double.tail
    @double.head.value.must_equal 2
  end

  it 'should remove element from middle of list' do
    @double.insert(2, Linked_Node)
    @double.insert(3, Linked_Node)
    @double.remove 2
    @double.head.next_node.must_equal @double.tail
  end

  it 'should remove head from large list' do
    @double.insert(2, Linked_Node)
    @double.insert(3, Linked_Node)
    @double.remove 3
    @double.head.value.must_equal 2
    @double.head.next_node.value.must_equal 1
  end

  it 'should remove tail from long list' do
    @double.insert(2, Linked_Node)
    @double.insert(3, Linked_Node)
    @double.remove 1
    @double.tail.value.must_equal 2
  end
end

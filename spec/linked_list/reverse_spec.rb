require 'spec_helper'
require 'linked_list'

describe 'linked list' do
  before do
    @list = LinkedList.new(3, Linked_Node)
  end

  it 'reverses the list' do
    @list.insert(2, Linked_Node)
    @list.insert(1, Linked_Node)
    @list.reverse
    @list.head.value.must_equal 3
    @list.head.next_node.value.must_equal 2
    @list.head.next_node.next_node.value.must_equal 1
  end
end

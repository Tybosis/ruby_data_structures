require 'spec_helper'
require 'linked_list'

describe 'linked_list' do
  before do
    @list = LinkedList.new('42', Linked_Node)
  end

  it 'should have a to_s method that prints a string of values' do
    add_node
    @list.to_s.must_equal 'hello world, 42'
  end

  it 'should work if there are multiple nodes' do
    @list.insert(5000, Linked_Node)
    @list.insert('Yes!', Linked_Node)
    @list.insert('hello world', Linked_Node)
    @list.to_s.must_equal 'hello world, Yes!, 5000, 42'
  end
end

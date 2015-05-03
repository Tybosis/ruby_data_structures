require 'spec_helper'
require 'linked_list'

describe 'linked_list' do
  before do
    @list = LinkedList.new(1)
  end

  it 'should have a search method that works' do
    add_node
    @list.search('hello world').value.must_equal 'hello world'
  end

  it 'search should return nil if nothing found' do
    @list.search('Happy').must_equal nil
  end

  it 'search returns a node object' do
    add_node
    @list.insert('second')
    @list.insert('first')
    @list.search('hello world').class.must_equal Linked_Node
  end
end

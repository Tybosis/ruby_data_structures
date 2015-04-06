require 'spec_helper'
require 'linked_list'

describe 'linked_list' do
  before do
    list = LinkedList.new
  end

  it 'should have an insert method that works' do
    assert_respond_to(LinkedList, insert)
    add_node
    list.first must_equal 42
  end

  it 'should be able to insert multiple times' do
    add_node
    list.insert(Node.new('the question', list.first))
  end
end

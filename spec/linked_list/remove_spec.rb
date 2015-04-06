require 'spec_helper'
require 'linked_list'

describe 'linked_list' do
  before do
    list = LinkedList.new
  end

  it 'should have a remove method that works' do
    assert_respond_to(LinkedList, remove)
    add_node
    list.remove(42)
    list.wont_include(42)
  end

  it 'should return nil if item does not exist' do
    list.remove(9001).must_equal nil
  end
end

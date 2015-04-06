require 'spec_helper'
require 'linked_list'

describe 'linked_list' do
  before do
    list = LinkedList.new
  end

  it 'should have a search method that works' do
    assert_respond_to(LinkedList, search)
    add_node
    list.search(42).must_equal Node(42, nil)
  end

  it 'search should return nil if nothing found' do
    list.search('Happy').must_equal nil
  end
end

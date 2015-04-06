require 'spec_helper'
require 'linked_list'

describe 'linked_list' do
  before do
    list = LinkedList.new
  end

  it 'should exist' do
    list.must_exist
  end

  it 'should have a search method that works' do
    assert_respond_to(LinkedList, search)
    add_node
    list.search(42).must_equal Node(42, nil)
  end

  it 'search should return nil if nothing found' do
    list.search('Happy').must_equal nil
  end

  it 'should have a delete method that works' do
    assert_respond_to(LinkedList, remove)
    add_node
    list.remove(42)
    list.wont_include(42)
  end

  it 'should have a to_s method that prints a string of values' do
    add_node
    list.to_s.must_equal "42"
  end
end

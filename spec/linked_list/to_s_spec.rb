require 'spec_helper'
require 'linked_list'

describe 'linked_list' do
  before do
    list = LinkedList.new
  end

  it 'should have a to_s method that prints a string of values' do
    add_node
    list.to_s.must_equal "42"
  end
end

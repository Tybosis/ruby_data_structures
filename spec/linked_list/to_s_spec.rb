require 'spec_helper'
require 'linked_list'

describe 'linked_list' do
  before do
    @list = LinkedList.new('42')
  end

  it 'should have a to_s method that prints a string of values' do
    add_node
    @list.to_s.must_equal 'hello world, 42'
  end

  it 'should work if there are multiple nodes' do
    @list.insert 5000
    @list.insert 'Yes!'
    @list.insert 'hello world'
    @list.to_s.must_equal 'hello world, Yes!, 5000, 42'
  end
end

require 'spec_helper'
require 'linked_list'

describe 'linked_list' do
  before do
    list = LinkedList.new
  end

  it 'should exist' do
    list.must_exist
  end
end

require 'spec_helper'
require 'linked_list'

describe 'linked_list' do
  before do
    @list = LinkedList.new(1)
  end

  it 'should exist' do
    @list.wont_be_nil
  end
end

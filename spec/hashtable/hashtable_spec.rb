require 'spec_helper'
require 'hashtable'
require 'hash_linked_list'

describe 'hashtable' do

  before :each do
    @hash = Hashtable.new(5, HashLinkedList)
  end

  it 'should be able to set and get values' do
    @hash.set('name', 'tyler')
    @hash.get('name').must_equal('tyler')
  end

  it 'should return the proper size of the hash' do
    @hash.set('first_name', 'tyler')
    @hash.size.must_equal 1
    @hash.set('last_name', 'pottle')
    @hash.size.must_equal 2
  end

  it 'should have a delete function that removes a value' do
    @hash.set('name', 'tyler')
    @hash.size.must_equal 1
    @hash.delete('name').must_equal 'tyler'
    @hash.size.must_equal 0
    @hash.get('name').target.must_be_nil
  end
end

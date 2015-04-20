require 'spec_helper'
require 'hashtable'
require 'hash_linked_list'

describe 'hashtable' do
  it 'should be initialied with a set size' do
    Hashtable.new(5, HashLinkedList)
  end

  it 'should be able to set and get values' do
    hash = Hashtable.new(5, HashLinkedList)
    hash.set('name', 'tyler')
    hash.get('name')
  end

  it 'should return the proper size of the hash' do
    hash = Hashtable.new(5, HashLinkedList)
    hash.set('first_name', 'tyler')
    hash.size.must_equal 1
    hash.set('last_name', 'pottle')
    hash.size.must_equal 2
  end
end

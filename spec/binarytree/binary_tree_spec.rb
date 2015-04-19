require 'spec_helper'
require 'binary_tree'

describe 'binary_tree' do
  it 'should be able to be initialized with a value' do
    BinaryTree.new(42)
  end

  it 'should be able to add values' do
    tree = BinaryTree.new(42)
    tree.insert(100)
  end

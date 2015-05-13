class BinaryTree
  attr_reader :value
  attr_accessor :left, :right

  def initialize(value)
    @value = value
    @left = NillNode.new
    @right = NillNode.new
  end

  # value, left, right
  def pre_order
    return unless self.value
    puts self.value
    @left.pre_order
    @right.pre_order
  end

  # left, value, right
  def in_order
    @left.in_order if @left
    puts self.value
    @right.in_order if @right
  end

  # left, right, value
  def post_order
    @left.post_order if @left
    @right.post_order if @right
    puts self.value
  end

  def push_left(val)
    self.left = BinaryTree.new(val)
  end

  def push_right(val)
    self.right = BinaryTree.new(val)
  end
end

class NillNode
  def initialize
    @value, @left, @right = false
  end

  def pre_order
    false
  end

  [:post_order, :in_order].each { |ali| alias_method ali, :pre_order }
end

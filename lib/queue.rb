# Queue class: first in first out; enqueue, dequeue, size methods.
class Queue
  attr_accessor :head, :tail

  def initialize
    @head, @tail = nil
  end

  def enqueue(value)
    if tail.nil?
      @tail = Node.new(value)
      return tail
    elsif @head.nil?
      @head = Node.new(value, @tail)
      @tail.prev_node = @head
    else
      current = @head
      @head = Node.new(value, current)
      current.prev_node = @head
    end
  end

  def dequeue
    fail 'Queue is empty. Nothing to dequeue!' if @head.nil? && @tail.nil?
    if @head.nil?
      @tail = nil
      return tail
    end
    current = @tail
    @tail = @tail.prev_node
    tail.next_node, current.prev_node = nil
    current
  end

  def size
    count = 0
    return count if tail.nil?
    current = @tail
    until current.nil?
      count += 1
      current = current.prev_node
    end
    count
  end
end

# Node class to represent nodes in the queue.
class Node
  attr_accessor :value, :next_node, :prev_node

  def initialize(value, next_node = nil, prev_node = nil)
    @value = value
    @next_node = next_node
    @prev_node = prev_node
  end
end

require 'linked_node'
class DoubleLinkedList
  attr_reader :head, :tail

  def initialize(head, node)
    @tail, @head = node.new (head, nil)
  end

  def insert(value, node)
    if @tail.nil?
      @head.nil? ? @tail, @head = node.new(value, nil) : @head = node.new(value, @head)
    elsif @head.nil?
      @head = node.new(value, @tail)
    else
      current = @head
      @head = node.new(value, current)
    end
  end

  def remove(input_value)
    current = @head
    return "list is already empty!" if @head.nil? && @tail.nil?
    if @head.value == input_value && @tail.nil?
      @head = nil
      return current
    end
    end
    until current.next_node.nil?
      previous = current
      current = current.next_node
      if current.value == input_value
        previous.next_node = current.next_node
        current.next_node = nil
        current
      end
    end
  end
end

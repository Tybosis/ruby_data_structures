require 'linked_node'
class DoubleLinkedList
  attr_reader :head, :tail

  def initialize(value, node)
    @head = @tail = node.new(value, nil)
  end

  def insert(value, node)
    if @head.nil?
      @head = @tail = node.new(value, nil)
    elsif @head == @tail
      @head = node.new(value, @tail)
    else
      current = @head
      @head = node.new(value, current)
    end
  end

  def remove(input_value)
    current = @head
    old_tail = @tail
    return "list is already empty!" if @head.nil?
    if @head.value == input_value
      if @head == @tail
        @head = @tail = nil
        return
      else
        @head = @head.next_node
        return current
      end
    end
    if (@head.value == input_value || @tail.value == input_value) && @head.next_node == @tail
      if @head.value == input_value
        @head.next_node = nil
        @head = @tail
        return current
      else
        @head.next_node = nil
        @tail = @head
        return old_tail
      end
    end
    until current.next_node.nil?
      previous = current
      current = current.next_node
      if current.value == input_value
        if current == @tail
          @tail = previous
          @tail.next_node = nil
          return
        else
          previous.next_node = current.next_node
          current.next_node = nil
          current
        end
      end
    end
  end
end

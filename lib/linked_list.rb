require 'pry'

class LinkedList
  attr_accessor :head

  def initialize(input_value = nil)
    @head = Node.new(input_value, nil)
  end

  def insert(input_value)
    @head = Node.new(input_value, @head)
  end

  def search(search_terms)
    current = @head
    until current.nil? || current.value == search_terms
      current = current.next_node
    end
    current
  end

  def remove(input_value)
    current = @head
    if current.value == input_value
      @head = (current.next_node.nil? ? Node.new : current.next_node)
      return current
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

  def to_s
    current = @head
    ans = ''
    until current.next_node.nil?
      ans += "#{current.value}, "
      current = current.next_node
    end
    ans += "#{current.value}"
  end
end

class Node
  attr_accessor :value, :next_node

  def initialize(value, next_node)
    @value = value
    @next_node = next_node
  end
end

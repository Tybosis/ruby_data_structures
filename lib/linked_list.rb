require 'linked_node'
class LinkedList
  attr_accessor :head

  def initialize(input_value = nil)
    @head = Linked_Node.new(input_value, nil)
  end

  def insert(input_value)
    @head = Linked_Node.new(input_value, @head)
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
      @head = (current.next_node.nil? ? Linked_Node.new : current.next_node)
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

  def reverse
    first = @head
    rest = @head.next_node
    current = @head.next_node
    @head.next_node = nil
    until rest.nil?
      rest = rest.next_node
      current.next_node = first
      first = current
      current = second
    end
  end
end

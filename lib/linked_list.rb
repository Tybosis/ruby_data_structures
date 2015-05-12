require 'linked_node'
class LinkedList
  attr_accessor :head

  def initialize(input_value = nil, node)
    @head = node.new(input_value, nil)
  end

  def insert(input_value, node)
    @head = node.new(input_value, @head)
  end

  def search(search_terms)
    current = @head
    until current.nil? || current.value == search_terms
      current = current.next_node
    end
    current
  end

  def remove(input_value, node)
    current = @head
    if current.value == input_value
      @head = (current.next_node.nil? ? node.new : current.next_node)
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
    the_rest = @head.next_node
    current = @head.next_node
    @head.next_node = nil
    until the_rest.nil?
      the_rest = the_rest.next_node
      current.next_node = @head
      @head = current
      current = the_rest
    end
  end
end

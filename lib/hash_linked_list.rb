# custom linked list to work with hashtable
class HashLinkedList
  attr_accessor :head

  def initialize(key = nil, input_value = nil)
    @head = Node.new(key, input_value, nil)
  end

  def insert(key, input_value)
    @head = Node.new(key, input_value, @head)
  end

  def search(search_terms)
    current = @head
    until current.nil? || current.key == search_terms
      current = current.next_node
    end
    current.value
  end

  def remove(input_value)
    current = @head
    if current.key == input_value
      @head = (current.next_node.nil? ? Node.new : current.next_node)
      return current.value
    end
    until current.next_node.nil?
      previous = current
      current = current.next_node
      if current.key == input_value
        previous.next_node = current.next_node
        current.next_node = nil
        current.value
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

  class Node
    attr_accessor :value, :next_node, :key

    def initialize(key, value, next_node)
      @key = key
      @value = value
      @next_node = next_node
    end
  end
end

# In that file, write the required Ruby classes to implement a linked list.
# Your list implementation should support the following methods:

# insert(node) will insert the given node at the head of the list.
# This operation should be O(1).

# search(val) will return the node containing 'val' in the list,
# if present, else nil. This should be O(n).

# remove(node) will remove the given node from the list, wherever
# it might be. Return the node object. If it isn't found,
# return nil.

# to_s will print a comma-separated list of all values in the all nodes,
# whatever those values might happen to be: "12, 'sam', :item, 'tango', 42"


class LinkedList
  def initialize
  end

  def insert(node)
  end

  def search(val)
  end

  def remove(node)
  end

  def to_s
    ans = ''
    ans += Node.val until Node.val = nil
  end
end

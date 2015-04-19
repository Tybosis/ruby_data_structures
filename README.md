# Data Structures

by Tyler Pottle

## Description

This project is a representation of various data structures implemented
in Ruby.

### Linked List

The linked_list.rb file contains my version of a linked list written in
ruby.  I created a list class, which is initialized with one node
object, but more node objects can be added.  A node object simply
holds a value and a reference to the next node object in the linked list.
I also included methods to remove a node from the list, search for a
specific node by value, and also a to_s method to return a string
comprised of all the values of nodes in the linked list, separated by
a comma.

My sources to write this linked list program were as follows:

[This article on linked lists in Ruby](http://www.thelearningpoint.net/computer-science/basic-data-structures-in-ruby---linked-list---a-simple-singly-linked-list)

[The Wikipedia entry for linked lists](http://en.wikipedia.org/wiki/Linked_list)

[The CS50 video on single linked lists](https://www.youtube.com/watch?v=5nsKtQuT6E8)

### Queue

The queue.rb file contains my implementation of a queue written in ruby.  The
queue is basically a doubly linked list with pointers for either endpoint,
which I called head and tail respectively.  The queue class includes an enqueue
method to add a new node to the head of the queue, a dequeue method to remove
the tail element of the queue, and a size method to return how many nodes are
in the queue.


## Hashtable

The hashtable.rb file contains my implementation of a binary tree in ruby.
The hashtable itself is a array of 'buckets' which are linked lists of nodes
that contain a key and a value.  The set method will use the hash method to
assign an index in the array where a new node holding the key and value passed
into the set method will get added to the linked list at that index.  The get
method uses the hash method to find the proper bucket for a given key.
It will then use the search method on the linked list to find the node
that contains that key, and return the corresponding value.  The size of the
hash is accessible via an attribute on the hashtable itself.  Everytime a new
node is added to a bucket in the hastable, the size will increase by one.


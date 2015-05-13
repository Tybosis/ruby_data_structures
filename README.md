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

### Binary Tree

The binary_tree.rb is my implementation of a binary tree in ruby.  The binary tree
is a recursive data structure where an initial binary tree  object can be created,
and then new binary trees can be added to the left or right, creating a tree
of binary trees.  The binary tree includes push_left and push_right methods to
add values to the left or right of the tree respectively, and three different
methods of traversal; pre-order, in-order, and post-order. See this
[wikipedia page](http://en.wikipedia.org/wiki/Tree_traversal) for a good
explanation of the three different methods of traversal.

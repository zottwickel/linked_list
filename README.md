# linked_list

Each node is an element. A node's value can be any form of data. Each node is linked with the proceeding node. Last line method call on #test_me can be commentted out.

# Features

The LinkedList class contains the following methods and operations:

	.append(INPUT) - will add INPUT as the value of a new node to the end of LinkedList

	.prepend(INPUT) - will add INPUT as the value of a new node to the beginning of LinkedList (this will make this node the new root of the LinkedList).

	.size - returns number of nodes in a LinkedList

	.head - returns first node of a LinkedList (index of 0)

	.tail - returns last node of a LinkedList

	.at(INDEX) - returns node at INDEX (INDEX is an integer and defaults to 0)

	.pop - removes and returns last element

	.contains?(INPUT) - returns true if INPUT is the value of any node in the LinkedList (Otherwise returns false).

	.find(INPUT) - returns index of the node with value = INPUT (otherwise returns nil)

	.to_str - Prints to the console the requirements for the Odin Project:
	link: https://www.theodinproject.com/courses/ruby-programming/lessons/linked-lists?ref=lnav

	.insert_at(INPUT, INDEX) - inserts a new node with value INPUT at the index INDEX, increasing each proceeding node's index by 1 (INDEX should be an integer and defaults to 0)

	.remove_at(INDEX) - deletes a node at index INDEX, each of the proceeding node's index is reduced by one

# Notes
	I believe that there could be some enumerables made for LinkedList
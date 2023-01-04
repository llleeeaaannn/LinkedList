# LinkedList
This repository is my implementation of a Linked list data structure through Ruby which I undertook as part of studying Ruby. I implemented a class for the linked list itself while also creating a class representing the nodes found in the list. The linked list is singly linked. I also added several useful methods to the linked list class as shown below.

# Guide for use
In order to make use of this data stricture simply include it in your file and create an instance of the Linked List. All methods can be called directly on the linked list class.

# Methods
| Methods           | Functionality |
| ----------------- | :---------- |
| #append(value)             | Adds a new node containing value to the end of the list |
| #prepend(value)            | Adds a new node containing value to the beginning of the list |
| #insert_at(value, index)   | Adds a new node containing value to the selected index of the list |
| #size                      | Returns the total number of nodes in the list |
| #head                      | Returns the first node in the list |
| #tail                      | Returns the last node in the list |
| #at(index)                 | Returns the node at the given index |
| #pop                       | Removes the last element from the list |
| #remove_at(index)          | Removes the node at the selected index from the list |
| #contains?(value)          | Returns true if the passed in value is in the list and otherwise returns false |
| #find(value)               | Returns the index of the node containing value, or nil if not found |
| #to_s                      | Prints a string representation of the list |

# HashMap

An implementation of HashMap in Ruby (an error is forced to be raised if the buckets index is out of bounds). 

HashMap Methods: 
- hash(key)
- set(key, value)
- get(key)
- has?(key)
- remove(key)
- length
- clear
- keys
- values
- entries

Also includes the HashSet class which is the HashMap class but with keys and no values.

The HashMap is a dynamic array (an array which changes size based on how many entries it contains) with each entry being a linked list to deal with collisions (where keys end up in the same index or bucket).

From The Odin Project: https://www.theodinproject.com/lessons/ruby-hashmap
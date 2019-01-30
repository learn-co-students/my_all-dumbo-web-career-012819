require 'pry'

def my_all?(collection)
  i =0
  block_collection = []
  while i < collection.length
    block_collection << yield(collection[i])
    i = i.next
  end
  return 0 if collection.empty?
  block_collection.include?(false) ? false : true
end

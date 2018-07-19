require 'pry'

def my_select(collection)
 if collection.size == 0
   return false
 else
   arr_clone = []
   counter = 0
   while counter < collection.length
     arr_clone << yield(collection[counter])
     puts arr_clone[counter]
     counter += 1
   end
    return arr_clone
 end
end

my_select([1, 2, 3, 4, 5]) do |num|
  num.even?
end

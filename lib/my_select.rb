require 'pry'

def my_select(collection)
 if collection.size == 0
   return false
 else
   arr_clone = []
   counter = 0
   while counter < collection.length
    if yield(collection[counter])
      arr_clone << collection[counter]
    end
     counter += 1
   end
    return arr_clone
 end
end

=begin
my_select([1, 2, 3, 4, 5]) do |num|
  num.even?
end
=end

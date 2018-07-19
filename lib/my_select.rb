require 'pry'

def my_select(collection)
 if collection.size == 0
   return false
 else
   arr_clone = []
   counter = 0
   while counter < collection.length
     arr_clone[counter] = yield collection[counter]
     puts arr_clone[counter]
     counter += 1
   end
    return arr_clone
 end
end

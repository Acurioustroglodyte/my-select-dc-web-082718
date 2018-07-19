def my_select(collection)
 if collection.size == 0
   return false
 else
   arr_clone = []
   counter = 0
   while counter < collection.length
     collection[counter] = yield collection[counter]
     counter += 1
   end
    return arr_clone
 end
end

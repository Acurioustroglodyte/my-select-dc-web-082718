def my_select(collection)
 if collection == null || collection.size == 0
   return false
 else
   arr_clone = []
   counter = 0
   while counter < collection.length
     arr_clone << yield collection[counter]
     counter += 1
   end
 end
end

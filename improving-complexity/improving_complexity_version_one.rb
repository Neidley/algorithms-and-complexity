#Create a version of the code above that has code optimizations.
#Put the solution in a file named improving_complexity_version_one.rb.

def improved_code(arrays)
  # Turns arrays(a 2D array) into a one-dimensional array and
  # Sets it to combined_array
  combined_array = arrays.flatten

  # Sets sorted_array with deleted last item from combined_array
  sorted_array = [combined_array.delete_at(combined_array.length - 1)]

  # Insertion Sort
  for val in combined_array
    i = 0
    while i < sorted_array.length
      if val <= sorted_array[i]
        sorted_array.insert(i, val)
        break
      elsif i == sorted_array.length - 1
        sorted_array << val
        break
      end
      i += 1
    end
  end

  # Return the sorted array
  sorted_array
end

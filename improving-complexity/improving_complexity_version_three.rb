#Create a version that improves the space complexity performance.
#Put the solution in a file named improving_complexity_version_two.rb.


def improved_space(arrays)
  combined_array = arrays.flatten

  quick_sort(combined_array, 0, combined_array.count - 1)
end

def quick_sort(array, from=0, to=nil)
  if to == nil
    to = array.count - 1
  end

  if from >= to
    return array
  end

  pivot = array[from]
  min = from
  max = to
  free = min

  while min < max
    if free == min
      if array[max] <= pivot
        array[free] = array[max]
        min += 1
        free = max
      else
        max -= 1
      end

    elsif free == max
      if array[min] >= pivot
        array[free] = array[min]
        max -= 1
        free = min
      else
        min += 1
      end

    else
      raise "Inconsistent state"
    end
  end

  array[free] = pivot
  quick_sort(array, from, free - 1)
  quick_sort(array, free + 1, to)
end

#This method takes n arrays as input and combine them in sorted
#ascending order
def poorly_written_ruby(arrays)
  combined_array = []
  arrays.each do |array|
    array.each do |value|
      combined_array << value
    end
  end

  sorted_array = [combined_array.delete_at(combined_array.length - 1)]

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

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

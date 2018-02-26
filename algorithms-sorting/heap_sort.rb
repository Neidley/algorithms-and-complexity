def heap_sort(array)
  first = 0
  last = array.length - 1

  while first < last
    array.each_with_index do |item, index|
      if index == last
        last -= 1
        break
      end
      if item > array[last]
        temp = array[last]
        array[last] = item
        array[index] = temp
      end
    end
  end
  return array

end

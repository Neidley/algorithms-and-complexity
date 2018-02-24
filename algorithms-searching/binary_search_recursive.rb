def binary_search_recursive(collection, value)
  low = 0
  high = (collection.length - 1)
  mid = (low + high) / 2

  if value < collection.first || value > collection.last
    return "not found"
  end

  if collection.first == value
    return collection.first
  elsif collection.last == value
    return collection.last
  end

  if collection[mid] > value

    high = mid - 1
    binary_search_recursive(collection[low..high], value)

  elsif collection[mid] < value

    low = mid + 1
    binary_search_recursive(collection[low..high], value)

  elsif collection[mid] == value
    return collection[mid]
  end
  
end

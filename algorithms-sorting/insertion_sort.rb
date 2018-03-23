def insertion_sort(collection)

  return nil if collection == nil

  return collection if collection.length == 1

  if collection.length == 2
    if collection[0] > collection[1]
      temp = collection[0]
      collection[0] = collection[1]
      collection[1] = temp
      return collection
    else
      return collection
    end
  end

  sorted_collection = [collection.delete_at(0)]

  for val in collection
    sorted_collection_index = 0

    while sorted_collection_index < sorted_collection.length
      if val <= sorted_collection[sorted_collection_index]
        sorted_collection.insert(sorted_collection_index, val)
        break
      elsif sorted_collection_index == sorted_collection.length - 1
        sorted_collection.insert(sorted_collection_index + 1, val)
        break
      end

      sorted_collection_index += 1
    end
  end

  sorted_collection
end

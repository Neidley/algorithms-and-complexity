require_relative 'insertion_sort'

def bucket_sort(array)
  n = array.count
  max = array.max
  min = array.min
  buckets = Array.new(10)
  divider = ((max+1)/buckets.count).ceil

  array.each do |item|
    j = (item / divider).floor

    if j > buckets.length - 1
      j = buckets.length - 1
    end

    if buckets[j] == nil
      buckets[j] = [item]
    else
      buckets[j] << item
    end

  end

  buckets.map! {|bucket| insertion_sort(bucket) }
  return buckets.compact.flatten
end

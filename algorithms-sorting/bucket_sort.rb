require_relative 'insertion_sort'

def bucket_sort(array)
  n = array.count
  max = array.max
  min = array.min
  buckets = Array.new(10)
  #p "starting buckets: #{buckets}"
  divider = ((max+1)/buckets.count).ceil

  array.each do |item|
    j = (item / divider).floor

    if j > buckets.length - 1
      j = buckets.length - 1
    end

    #p "item: #{item}"
    #p "j: #{j}"
    #p "buckets[j]: #{buckets[j]}"

    if buckets[j] == nil
      buckets[j] = [item]
    else
      buckets[j] << item
    end

    #p "buckets[j]: #{buckets[j]}"
    #p "buckets: #{buckets}"
  end

  #p "final buckets: #{buckets}"

  buckets.map! {|bucket| insertion_sort(bucket) }
    #p "bucket: #{bucket}"
    #p "insertion_sort(bucket): #{insertion_sort(bucket)}"
    #insertion_sort(bucket)
  #end
  return buckets.compact.flatten
end

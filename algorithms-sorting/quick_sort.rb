def quick_sort(array)
  return nil if array.empty?

  #[34, 2, 1, 5, 3]
  # pivot = 1
  #[34, 2, 5, 3]
  # left = [34, 2]
  # right = [5, 3]
  pivot = array.delete_at(rand(array.size))
  left, right = array.partition(&pivot.method(:>))

  result = quick_sort(left), pivot, quick_sort(right)
  return result.flatten.compact
end

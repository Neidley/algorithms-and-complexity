# irb
# load './algorithms-sorting/sorting_chart_benchmark.rb'


require_relative 'bubble_sort'
require_relative 'bucket_sort'
require_relative 'heap_sort'
require_relative 'insertion_sort'
require_relative 'merge_sort'
require_relative 'quick_sort'
require_relative 'selection_sort'
require 'benchmark'
include Benchmark

array = (1..50).to_a.shuffle
p "array: #{array}"

Benchmark.benchmark(CAPTION, 7, FORMAT, ">total:", ">avg:") do |x|
  x.report("bubble_sort")   { bubble_sort(array) do ; a = "1"; end }
  x.report("bucket_sort") { bucket_sort(array) do ; a = "1"; end }
  x.report("heap_sort")  { heap_sort(array) do ; a = "1"; end }
  x.report("insertion_sort")  { insertion_sort(array) do ; a = "1"; end }
  x.report("merge_sort")  { merge_sort(array) do ; a = "1"; end }
  x.report("quick_sort")  { quick_sort(array) do ; a = "1"; end }
  x.report("selection_sort")  { selection_sort(array) do ; a = "1"; end }
end

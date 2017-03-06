def combiner(arr1, arr2)
  arr1.zip(arr2).flatten
end

a = [1, 2, 3]
b = ['a','b','c']

print combiner(a, b)

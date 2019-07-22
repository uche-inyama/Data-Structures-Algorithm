 def insertion_sort(array)
  for i in 0..array.length - 1 do
      value = array[i]
      hole = i
      while (hole > 0 && array[hole - 1] > value)
         array[hole] = array[hole - 1]
         p array.join('')
         hole = hole - 1
      end
        array[hole] = value
  end
  array.join('')
end
p insertion_sort([4, 1, 6, 3, 9])

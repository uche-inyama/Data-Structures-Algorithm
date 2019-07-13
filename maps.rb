def appears_most_times(array)
    arr = []
    x = array.each_with_object(Hash.new(0)) {|i, a| a[i] += 1}
    x.each do |key, value|
      arr << value
    end
    val = arr.max
    x.each do |key1, value1|
      if value1 == val
         return key1
      end
    end
end
# p appears_most_times([4376, -345, -345, 4376, -345, 84945, 4376, -345, -26509, 4376, 84945, 84945, -26509, 896341, 4376])

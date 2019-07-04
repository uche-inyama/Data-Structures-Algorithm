def min(array, n)
	# p n
	if n == 1
		return array[0]
	end
	if array[n-1] < array[n-2]
		 mini = array[n-1]
		array.delete_at(n-2)
	else
		 mini = array[n-2]
		array.delete_at(n-1)
	end
	return min(array, n-1)
end

p min([100,280,30,25,40,20], 6)
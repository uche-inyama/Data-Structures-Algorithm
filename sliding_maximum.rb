def sliding_maximum(k, array)
	dequeue = []
	for i in 0...k
		dequeue << i
	end
	array.combination(2).any? {|a, b|  a < b  } ? dequeue.shift : continue
	
end

sliding_maximum(3, [1,3,5,7,9,2])


ary = [1,3,5,7,9,2]
p ary.combination(2).any? {|a, b| p b  }
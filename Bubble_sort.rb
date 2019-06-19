arr = [10,17,16,3,18,13,12,9,8]

len = arr.length - 1

len.step(1, -1) do | a |
	for i in (0...a)
		if arr[i] > arr[i+1]
			temp = arr[i]
			arr[i] = arr[i+1]
			arr[i+1] = temp
	    end
    end
end

def bubble_sort_by(arr)
	len = arr.length - 1
	len.step(1, -1) do | a |
		for i in (0...a)
			test = yield(arr[i], arr[i+1])
			if test > 0
				temp = arr[i]
				arr[i] = arr[i+1]
				arr[i+1] = temp
			end
	    end
    end
    arr
end

sorted = bubble_sort_by(["hi","hello","hey","hey","wazaaaaaa"]) do |left,right| 
	left.length - right.length
end  
print sorted 	

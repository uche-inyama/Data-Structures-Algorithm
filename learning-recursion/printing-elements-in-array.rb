def print_I(array)
	if array.length > 0
		p array.shift
		print_I(array)
	end
end

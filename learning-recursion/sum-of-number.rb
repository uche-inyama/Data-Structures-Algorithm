def sum(n)
	if n == 1
		return n
	end
	return n + sum(n-1)
end
# p sum(4)
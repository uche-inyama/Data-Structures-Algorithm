def power(n, p)
	if p == 1
		return n
	end
	if p == 0
		return 1
	end
	 n *= power(n, p-1)
end
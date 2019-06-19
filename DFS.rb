def dfs (graph, start=0, visited=nil)
	stack = []
	visited = [0]
	# p visited
		# p start
	 graph[start]
	 # p j
	for j in graph
	# until graph.length == visited.length do
		for i in  graph[start]
			# p i
			next if visited.include?i
			stack << i
			# p stack
			 # start
		end
			start = stack.shift
			visited << start
		start
	end
	 visited
end

graph = {
  0 => [2], 
  1 => [4], 
  2 => [5, 0, 3], 
  3 => [2], 
  4 => [1, 5], 
  5 => [4, 2]
}

p dfs(graph)

# graph = {
#   0 => [2], 
#   1 => [4], 
#   2 => [5, 0, 3], 
#   3 => [2], 
#   4 => [1, 5], 
#   5 => [4, 2]
# }



graph = {
	0=>[1, 2], 
	1=>[0, 2], 
	2=>[0, 1, 3, 4, 5], 
	3=>[2, 4], 
	4=>[3, 2], 
	5=>[2]
}

p dfs(graph)
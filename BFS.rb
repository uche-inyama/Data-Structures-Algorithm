graph = {
  0 => [2], 
  1 => [4], 
  2 => [5, 0, 3], 
  3 => [2], 
  4 => [1, 5], 
  5 => [4, 2]
}

def bfs(graph)
  # write your code here
    visited = []
    queue = [0]
    until queue.empty?
    	var = queue.shift
    	if visited.include?(var)
    		next
    	else
    		visited << var
    		graph[var].each do | num | 
    		if visited.include?(num)
    			next
    		else
    	    queue << num
    	 end
      end
    end
    queue << graph[var][0]
  end
  visited
end

p bfs({
  0 => [2], 
  1 => [4], 
  2 => [5, 0, 3], 
  3 => [2], 
  4 => [1, 5], 
  5 => [4, 2]
})





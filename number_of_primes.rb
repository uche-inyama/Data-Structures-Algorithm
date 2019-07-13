require 'set'

def number_of_primes(arr)
  # write your code here
    hash = {}
    n = 10000
    lim =  Math.sqrt(n)
    for i in 2..n do
      hash[i] = true
    end

   for i in 2..lim do
      if hash[i] == true
        k = 0
        while true
          j = (i**2 + (k*i))
          break  if j > n
          hash[j] = false
          k+=1
        end
      end
    end
    arr.select {|val|  hash[val]}.count
  end

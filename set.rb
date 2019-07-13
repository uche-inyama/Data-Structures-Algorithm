require 'set'

def list_duplicates(array)
  # write your code here
  z = Set[]
  ar = []
  array.each do |x|
    if z.include?(x)
      p ar << x
    else
       z.add(x)
    end
  end
  ar
end
 list_duplicates([1,2,2,3,4,4,2])

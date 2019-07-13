def hash_table(arr, table = {}, answer = [])
     if arr.empty?
        table.sort_by { |key,value| key }.each { |key,value| answer << value }
        return answer.flatten
     end
     x = arr.first
     rem = x.abs % 11
     table[rem].nil? ? table[rem] = x : table[rem] = [table[rem], x]
     arr.shift
     hash_table(arr, table)
end

# p hash_table([12, 24, 2, 91, 125, 5, 3536, 1106, 29, 1021, 10])
# p hash_table([2, 341, 73, 8265, 234004, 602, 7400000, 200000000])

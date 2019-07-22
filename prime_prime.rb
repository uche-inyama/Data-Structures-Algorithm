require 'set'

def prime_prime(array)

  def get_primes(max)
    prime_numbers = Set.new(2..max)

    for i in 2..Integer.sqrt(max)
      if prime_numbers === i
        m = 0
        j = i**2
        while j <= max
          prime_numbers.delete(j)
          m += 1
          j = i**2 + m*i
        end
      end
    end
    return prime_numbers
  end

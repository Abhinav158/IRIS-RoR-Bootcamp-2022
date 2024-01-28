def prime_numbers(n:)
  # Raise the Argument error if the input is not an integer or it is non-positive 
  raise ArgumentError, 'Invalid input. n must be a positive integer.' unless n.is_a?(Integer) && n.positive?

  # Keep an array to store the numbers that are prime from 2 to the given number n
  primes = []

  # Iterate through all these numbers 
  for number in 2..n
    is_prime = true

    for divisor in 2..Math.sqrt(number)
      # If you find another divisor, this number is not a prime - so set is_prime to false 
      if number % divisor == 0
        is_prime = false
        break
      end
    end

    # Add all the prime numbers into the array
    primes << number if is_prime
  end

  return primes
end



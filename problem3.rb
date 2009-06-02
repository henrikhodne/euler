require "project_euler"

require "prime"

class Integer
  def largest_prime_factor
    i = Math.sqrt(self).ceil
    loop do
      if i.even?
        i -= 1
      end
      return i if self % i == 0 && i.is_prime?
      i -= 2
    end
    nil
  end
end

problem = Euler::Problem.new(3, <<DESCRIPTION
The prime factors of 13195 are 5, 7, 13 and 29.

What is the largest prime factor of the number 600851475143 ?
DESCRIPTION
)

problem.solve { 600851475143.largest_prime_factor }

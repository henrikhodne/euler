require "project_euler"

problem = Euler::Problem.new(6, <<DESCRIPTION
By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6^(th) prime is 13.

What is the 10001^(st) prime number?
DESCRIPTION
)

require "prime"

problem.solve do
  prime_number = 0
  i = 1
  loop do
    if i.is_prime?
      prime_number += 1
      break if prime_number == 10001
    end
    i += 2
  end
  i
end

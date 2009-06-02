require "project_euler"

problem = Euler::Problem.new(5, <<DESCRIPTION
2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.

What is the smallest number that is evenly divisible by all of the numbers from 1 to 20?
DESCRIPTION
)

def gcd(a, b)
  if b == 0
    return a
  else
    gcd(b, a % b)
  end
end

def lcm(a, b)
  (a*b).abs / gcd(a,b)
end

problem.solve do
  range = 1..20
  
  range.to_a.inject { |a, b| lcm(a, b) }
end

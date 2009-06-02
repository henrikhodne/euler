require "project_euler"

def find_multiples_of(num, up_to=1000)
  multiples = []
  1.upto(up_to-1) do |i|
    multiples << i if i % num == 0
  end

  #multiples = []
  #i = 1  
  #multiple = 0
  #until multiple >= up_to
  #  multiple = num * i
  #  multiples << multiple if multiple < up_to
  #  i += 1
  #end

  multiples

  #puts multiples.inspect

  #sum_of_multiples = multiples.inject { |sum, n| sum + n }
end

class Array
  def sum
    self.inject { |sum, n| sum + n }
  end
end

problem = Euler::Problem.new(1, <<DESCRIPTION
If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.

Find the sum of all the multiples of 3 or 5 below 1000.
DESCRIPTION
)

problem.solve { (find_multiples_of(3, 1000) + find_multiples_of(5, 1000)).uniq.sum }


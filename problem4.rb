require "project_euler"

class Integer
  def palindrome?
    self.to_s == self.to_s.reverse
  end
end

problem = Euler::Problem.new(4, <<DESCRIPTION
A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.

Find the largest palindrome made from the product of two 3-digit numbers.
DESCRIPTION
)

problem.solve do
  largest = 0
  999.downto(100) do |i|
    999.downto(100) do |j|
      largest = i*j if (i*j).palindrome? && i*j > largest
    end
  end
  largest
end

module Euler; end
class Euler::Problem
  def initialize(problem_num, description)
    @num = problem_num
    @description = description
    at_exit do
      puts "Project Euler"
      puts "Problem #{@num}"
      puts "============="
      puts description
      if @solution && ARGV.include?("--solution")
        puts "Solution (calculating): "
        puts @solution.call()
      elsif !ARGV.include?("--solution")
        puts "Call again with --solution to show solution"
      else
        puts "No solution specified"
      end
    end
  end

  def solve(&block)
    @solution = block
  end
end



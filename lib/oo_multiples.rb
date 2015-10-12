# Enter your object-oriented solution here!
class Multiples

  def initialize(num)
    @num = num
    raise ArgumentError unless @num != nil
  end

  def collect_multiples
    @num_array = [*1..@num-1]
    @num_array.map do |num|
      if num % 5 == 0 || num % 3 == 0
        num
      end
    end.compact
  end

  def sum_multiples
    collect_multiples.inject{|sum, num| sum + num}
  end
end

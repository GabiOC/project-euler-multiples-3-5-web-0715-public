# Enter your procedural solution here!

def collect_multiples(limit)
  num_array = [*1..limit-1]
  num_array.map do |num|
    if num % 5 == 0 || num % 3 == 0
      num
    end
  end.compact
end

def sum_multiples(limit)
  num_array = collect_multiples(limit)
  num_array.inject{|sum, num| sum + num}
end

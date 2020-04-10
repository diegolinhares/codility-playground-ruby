# frozen_string_literal: true

class MaxCounters
  def self.solution(n, a)
    counters = Array.new(n, 0)

    a.each do |instruction|
      if instruction > n
        max_counter = counters.max
        counters = Array.new(n, max_counter)
      else
        counters[instruction - 1] += 1
      end
    end

    counters
  end
end

puts MaxCounters.solution(5, [3, 4, 4, 6, 1, 4, 4])

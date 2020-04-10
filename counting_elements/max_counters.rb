# frozen_string_literal: true

class MaxCounters
  def self.solution(n, a)
    counters = Array.new(n, 0)
    start = 0
    max_counter = 0

    a.each do |instruction|
      if instruction > n
        start = max_counter
      elsif counters[instruction - 1] < start
        counters[instruction - 1] = start + 1
      else
        counters[instruction - 1] += 1
      end

      if instruction <= n && counters[instruction - 1] > max_counter
        max_counter = counters[instruction - 1]
      end
    end

    counters.map { |x| x < start ? start : x }.inspect
  end
end

puts MaxCounters.solution(5, [3, 4, 4, 6, 1, 4, 4])

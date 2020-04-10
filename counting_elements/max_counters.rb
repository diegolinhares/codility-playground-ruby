# frozen_string_literal: true

class MaxCounters
  def self.solution(n, a)
    counters = Array.new(n, 0)

    until a.empty?
      instruction = a.first

      if instruction > n
        max_counter = counters.max
        counters = Array.new(n, max_counter)
      else
        counters[instruction - 1] += 1
      end

      a.shift
    end

    counters.inspect
  end
end

puts MaxCounters.solution(5, [3, 4, 4, 6, 1, 4, 4])

# frozen_string_literal: true

class CyclicRotation
  def self.solution(a, k)
    k.times do
      last_element = a.last
      a.pop
      a.unshift(last_element)
    end

    a.inspect
  end
end

puts CyclicRotation.solution([1, 2, 5, 3, 4], 2)

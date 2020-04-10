# frozen_string_literal: true

class CyclicRotation
  def self.solution(a, k)
    return a if a.empty?

    k.times do
      last_element = a.last
      a.pop
      a.unshift(last_element)
    end

    a

    # Another way to implement
    # result = Array.new(a.length)
    #
    # (0..(a.length - 1)).each do |i|
    #  result[(i + k) % a.length] = a[i]
    # end
    #
    # result
  end
end

puts CyclicRotation.solution([], 2)

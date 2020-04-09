# frozen_string_literal: true

# Complexity O(N)
class EquilibriumProblem
  def self.solution(a)
    left_elements_sum = a[0]
    right_elements_sum = a.sum - a[0]
    difference = (left_elements_sum - right_elements_sum).abs

    (1..a.length - 2).each do |i|
      left_elements_sum += a[i]
      right_elements_sum -= a[i]
      current_difference = (left_elements_sum - right_elements_sum).abs

      difference = current_difference if difference > current_difference
    end
    
    difference
  end
end

puts EquilibriumProblem.solution([3, 1, 2, 4, 3])

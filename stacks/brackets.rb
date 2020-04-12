# frozen_string_literal: true

class Brackets
  def self.solution(s)
    stack = []

    s.each_char do |c|
      stack.push c if ['[', '(', '{'].include?(c)
      top_element = stack.last

      stack.pop if top_element == '[' && c == ']'
      stack.pop if top_element == '(' && c == ')'
      stack.pop if top_element == '{' && c == '}'
    end

    stack.empty? ? 1 : 0
  end
end

puts Brackets.solution('[{()()}]')

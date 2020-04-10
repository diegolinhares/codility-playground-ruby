class Brackets
  def self.solution(s)
    stack = []

    s.each_char do |c|
      if stack.empty?
        stack.push c
      else
        top_element = stack.last

        stack.pop if top_element == '[' && c == ']'
        stack.pop if top_element == '(' && c == ')'
        stack.pop if top_element == '{' && c == '}'
      end
    end

    stack.empty? ? 1 : 0
  end
end

puts Brackets.solution('[{()()}]')
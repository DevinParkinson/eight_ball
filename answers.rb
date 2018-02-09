require 'colorize'

class Answers
  @q
  def initialize(question)
    @q = question
  end

  def shake
    arr = ["Yes", "no", "maybe", "why are you asking"]
    puts arr.sample().to_s.upcase.colorize(:green)
  end
end

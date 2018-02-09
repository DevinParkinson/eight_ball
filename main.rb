require_relative 'answers'
require 'colorize'

class Main
def shake{
  question = gets.to_i
  if question.include?(/[£$]\d+,\d+\.\d+|\d+\.\d+|\d+/)
    puts "no numbers please"
  else
    answers = Answers.new(question)
    answes.shake
}
end

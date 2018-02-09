require_relative 'answers'
require 'colorize'

class Main
  def self.run
    puts "ASK A QUESTION"
    question = gets.strip
    if question.is_a? Numeric
      puts "no numbers please"
    else
      answers = Answers.new(question)
      answers.shake
    end
  end
end
Main.run

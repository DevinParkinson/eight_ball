require_relative 'answers'
require 'colorize'
require 'colorized_string'

class Main
  def self.run
    #arr = ColorizedString.colors
    #puts arr
    puts "ASK A QUESTION".colorize(:magenta)
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

 require 'colorize'
class Answers
  def initialize(question)
  @answers ['Yes', 'No', 'Maybe', 'Try again later', 'Nice try', 'Possibly']
  def menu
    puts "Think of your question\nWhen ready type shake\nIf you want to leave, Type Quit"
    shake = gets.strip.downcase
    if shake == 'shake'
    answers
  elsif shake == 'quit'
    exit
    else
      puts "Incorrect input, Please try again"
      menu
    end
  end

  def answers
    @answers.rand {|a| puts a}
  end
end

require_relative 'answers'
require 'colorize'
require 'colorized_string'

class Main
  def self.run
    #arr = ColorizedString.colors
    #puts arr
    puts "ASK A QUESTION".colorize(:magenta)
    question = gets.strip
    i = 0
    timer = 0
    while timer < 10
      if i == 0
        puts '
        .-"""-.
        /     _ \
        |    (8)|
        \     ^ /
          -...- '
        sleep(1.0/3.0)
        i = 1
        timer += 1
      else i == 1
        puts '
        .-"""-.
        / _    \
        |(8)    |
        \ ^    /
         -...-'
        sleep(1.0/3.0)
        i = 0
        timer += 1
      end
    end
    if question.is_a? Numeric
      puts "no numbers please"
    else
      answers = Answers.new(question)
      answers.shake
    end
  end
end
Main.run

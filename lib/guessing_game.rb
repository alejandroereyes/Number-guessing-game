class NumberGuess

  def initialize
    @correct_number = rand(1..100)
  end

  def start

    opener

    get_input

  end # start method

  def opener
    system ('clear')
    puts "Welcome to Number Guess 3000 \n"
  end # opener method

  def get_input
    print "Guess a number between 1 - 100 : "
    user_guess = gets.chomp.to_i
  end # get_input method
end # class

game = NumberGuess.new

game.start

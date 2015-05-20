class NumberGuess

  def initialize
    @correct_number = rand(1..100)
  end

  def start
    # say hello to the user
    opener
    # prompt user for a guess
    get_input



  end # start method

  def opener
    system ('clear')
    puts "Welcome to Number Guess 3000 \n"
  end # opener method

  def get_input
    print "Guess a number between 1 - 100 : "
    user_guess = gets.chomp
    # validate user input
    while user_guess.class != Fixnum || user_guess < 1 || user_guess > 100
      puts ""
      puts "!!  Invalid Entry !!"
      print "Guess a number between 1 - 100 : "
      user_guess = gets.chomp
    end # validation loop
    user_guess.to_i!
  end # get_input method
end # class

game = NumberGuess.new

game.start

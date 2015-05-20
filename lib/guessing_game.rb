class NumberGuess

  def initialize
    @correct_number = rand(1..100)
    @user_guess = 0
  end

  def start
    # say hello to the user
    puts opener
    # prompt user for a guess
    get_input
    # evaluate the user's guess



  end # start method

  def opener
    system ('clear')
    "Welcome to Number Guess 3000 "
  end # opener method

  def get_input
    puts ""
    print "Guess a number between 1 - 100 : "
    @user_guess = gets.chomp.to_i
    # validate user input
    while @user_guess < 1 || @user_guess > 100
      puts ""
      puts "!!  Invalid Entry !!"
      print "Guess a number between 1 - 100 : "
      @user_guess = gets.chomp.to_i
    end # validation loop
    @user_guess
  end # get_input method

  def guess_checker
  end # guess_checker method
end # class

game = NumberGuess.new

game.start

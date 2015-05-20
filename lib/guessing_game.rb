class NumberGuess

  def initialize
    @correct_number = rand(1..100)
    @user_guess = 0
    @counter = 0
  end

  def start
    # say hello to the user
    puts opener
    puts @correct_number
    # prompt user for a guess
    get_input
    #loop until user guess is correct
    while @user_guess != @correct_number && @counter < 5
      # evaluate the user's guess
      guess_checker
    end # loop
    # Determine is user won or lost
    display_results
  end # start method

  def opener
    system ('clear')
    "Welcome to Number Guess 3000 "
  end # opener method

  def get_input
    puts ""
    print "Guess a number between 1 - 100 : "
    @user_guess = gets.chomp.to_i
    @counter += 1
    # validate user input
    while @user_guess < 1 || @user_guess > 100
      puts ""
      puts "!!  Invalid Entry !!"
      print "Guess a number between 1 - 100 : "
      @user_guess = gets.chomp.to_i
      @counter += 1
    end # validation loop
    @user_guess
  end # get_input method

  def guess_checker
    if @user_guess < @correct_number
      puts "#{@user_guess} is too low!"
      get_input
    elsif @user_guess > @correct_number
      puts "#{@user_guess} is too high!"
      get_input
    end # conditional
  end # guess_checker method

  def display_results
    if @user_guess == @correct_number && @counter <= 5
      puts ""
      puts "#{@user_guess} is correct!"
      puts "You figured it out in #{@counter} guesses!"
      puts "You're awesome!"
      @counter = 0
    else
      puts ""
      puts "This is guess # #{@counter}, looks like you lost."
      puts "That's okay, just don't take a job as a weight guessing carny ;)"
    end # conditional
  end # display_result method
end # class


game = NumberGuess.new

game.start

class NumberGuess

  def initialize
    @correct_number = rand(1..100)
    @user_guess = 0
    @counter = 0
    @low = false
    @high = false
  end

  def start
    # say hello to the user
    puts opener
    # prompt user for a guess
    get_input
    #loop until user guess is correct
    while @user_guess != @correct_number && @counter < 5
      # check if user's guess is too low or too high
      guess_checker
    end # loop
    # Determine is user won or lost & display results
    display_results
  end # start method

  def opener
    system ('clear')
    "Welcome to Number Guess 3000"
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
      if @low && @user_guess < @correct_number - 10
        puts "I told you, you were low... get it together.."
      elsif @low && @user_guess > @correct_number - 11 && @user_guess < @correct_number
        puts "you're getting warmer but..."
      end
      puts "#{@user_guess} is too low"
      @low = true
      get_input
    elsif @user_guess > @correct_number
      if @high && @user_guess > @correct_number + 10
        puts "...How high are you?!"
      elsif @high && @user_guess < @correct_number + 11 && @user_guess > @correct_number
        puts "you're getting warmer but..."
      end
      puts "#{@user_guess} is too high"
      @high = true
      get_input
    end # conditional
  end # guess_checker method

  def display_results
    if @user_guess == @correct_number && @counter <= 5
      puts ""
      puts "#{@user_guess} is correct!"
      if @counter == 1
        puts "WOW! You figured it out in #{@counter} guess!"
      else
        puts "You figured it out in #{@counter} guesses!"
      end
      @counter = 0
      puts "You're awesome!"
    else
      puts ""
      puts "This is guess ##{@counter}, looks like you lost."
      puts "That's okay, just don't take a job as a weight guessing carny ;)"
    end # conditional
  end # display_result method
end # class


game = NumberGuess.new

game.start

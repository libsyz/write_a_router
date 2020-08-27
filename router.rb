
class Router
  def initialize(controller, sessions)
    @controller = controller
    @sessions = sessions
    @running = true
    @user = nil
  end

  def run
    while @running do
      @user = @sessions.verify_user
      while @user
    # It needs to keep running
      display_actions
      # Display tasks or actions - done
      # Ask for an action from the user
      action = get_action_from_user
      case action
      when 1 then @controller.say_hello
      when 2 then @controller.thank_you
      when 3 then @controller.get_out
      when 4 then log_out
      when 5 then quit
      else
        did_not_understand
      end
    end
  end
    # Delegate the action selected to the controller
    # if the action is not found, # inform the user
  end

  def display_actions
    puts "These are all the actions available"
    puts "1. Say Hello!"
    puts "2. Say Thank You!"
    puts "3. Say You are out of here!"
    puts "4. Log Out"
    puts "5. Quit Program"
  end

  def get_action_from_user
    puts "what would you like to do next?"
    print ">"
    gets.chomp.to_i
  end

  def did_not_understand
    puts "sorry I did not get that"
    puts "All actions available are 1, 2 and 3"
  end

  def log_out
    puts "Logging out"
    @user = nil
  end

  def quit
    @running = false
    @user = nil
  end

end

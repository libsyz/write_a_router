
class Sessions

  def verify_user
    creds = {
      user: "miguel",
      pass: "secret"
    }

    # Ask the user for a username
    puts "Please enter your username"
    user = gets.chomp
    # ask the user for a password
    puts "Please enter your password"
    pass = gets.chomp
    if creds[:user] == user && creds[:pass] == pass
      puts "Welcome to the app!"
      user
    else
      puts "Sorry, wrong credentials!"
      verify_user
    end
    # if these match what I have in creds, grant access
    # otherwise, ask for credentials again
  end
end

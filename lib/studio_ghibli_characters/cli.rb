class StudioGhibliCharacters::CLI
  def start
    StudioGhibliCharacters::API.character_list
    puts "Welcome to the Studio Ghibli Character Project for Flatiron School"
    menu
    goodbye
  end

  def menu
    input = nil
    puts "***Please choose a character's number.***"
    list_characters
    input = gets.strip.downcase
    #if input == exit, then exit
    #send input to integer
    #if input is 1-10, show character
    #if not, then show error message, and go back to menu
    if input == "exit"
      goodbye
    else
      its = input.to_i
      if its != 0
        char_input = StudioGhibliCharacters::Characters.find(its)
        character_details(char_input)
        puts "Would you like to see information for another character?"
        ac = gets.strip.downcase
        if ac == "yes" || ac == "y"
          menu
        else
          goodbye
        end
      else
        puts "I don't understand that selection."
        puts "Please select a character's number, or type exit to leave the program."
        menu
      end
    end

  def goodbye
    puts "Thanks for checking out my project!"
    exit
  end
end

require_relative "user"
require_relative "pokemon"
require_relative "team"

class CommandLineInterface
    
   def greet 
        puts ""
        puts ""
        puts ""
        puts "                pGoDEX"
        puts ""
        puts ""
        puts " For access please sign in or sign up"
        puts signup_input = gets.chop
        User.create(username: signup_input) 
        puts ""   
        puts " Hi #{signup_input}, thank you for choosing pGoDEX!"  
        puts ""
        puts ""   
    end 

    def list_types
        puts "  ALL AVAILABLE POKEMON TYPES"
        puts ""
        puts "  BUG         FIRE        NORMAL"
        puts "  DARK        FLYING      POISON"
        puts "  DRAGON      GHOST       PSYCHIC"
        puts "  ELECTRIC    GRASS       ROCK"
        puts "  FAIRY       GROUND      STEEL"
        puts "  FIGHTING    ICE         WATER"
        puts ""
        puts "  To return to MAIN MENU press [1]"
        puts "  To EXIT PROGRAM hit [2]"
        answer = gets.chomp
        if answer == '1'
            main_menu
        elsif answer == '2'
            exit
        else 
            puts "Wrong command, try again."
            list_types
        end 
    end 

#   returns list of pokemon according to the type passed in.    
    def search_by_type #2
        puts " Enter Pokemon TYPE"
        input = gets.chomp.capitalize
        types_list = Pokemon.where(types: input).map {|pok| pok.pokemon_name}
        #binding.pry
        # #binding.pry
        if types_list[0] == nil
            puts " Ooops, looks like something went wrong. Try again."
        else
            types_list
        end
        # # binding.pry
        # puts " "
        puts types_list
        puts " "
        puts " "
        puts "  To search again type [1] then ENTER"
        puts "  To return to MAIN MENU type [2] then ENTER"
        puts "  To EXIT PROGRAM type [3] then ENTER"
        answer = gets.chomp
        if answer == '1'
            search_by_type
        elsif   answer == '2'
            main_menu
        elsif answer == '3'
            exit
        else 
            puts "Wrong command, try again."
            search_by_type
        end 
    end 

#   returns the max CP of a given pokemon 
    def max_cp  #3
        puts " Enter Pokemon NAME"
        input = gets.chomp.capitalize
        check = Pokemon.where(pokemon_name: input)
        if check[0] == nil
            puts " Ooops, looks like something went wrong. Try again."
        else
            pokemon_cp = Pokemon.where(pokemon_name: input).map {|pok| pok.max_cp}
        end
        puts " "
        puts pokemon_cp
        puts " "
        puts "  To search again type [1] then ENTER"
        puts "  To return to MAIN MENU type [2] then ENTER"
        puts "  To EXIT PROGRAM type [3] then ENTER"
        answer = gets.chomp
        if answer == '1'
            max_cp
        elsif   answer == '2'
            main_menu
        elsif answer == '3'
            exit
        else 
            puts "Wrong command, try again."
            max_cp
        end 
    end 

#adds pokemon to my accout/pgodex
    def add_pokemon_to_acct #4
        puts ""



    end 


    def main_menu
        puts "MAKE A SELECTION FROM THE MENU BELOW & HIT ENTER"
        puts "  [1]       -     List available POKEMON TYPES"
        puts "  [2]       -     Search for POKEMON by TYPE"
        puts "  [3]       -     View MaxCP of a POKEMON"
        puts "  [4]       -     Add POKEMON to your pGoDEX"
        puts "  [5]       -     View all POKEMON in your pGoDEX"
        puts "  [6]       -     Remove POKEMON from your pGoDEX"
        puts "  [7]       -     Delete your account"
        puts "  [Exit]    -     Exit program"
        puts "  ENTER DESIRED MENU OPTION:"

        while true
            input = gets.chomp
            if input == '1'
                list_types
                break
            elsif input == '2'
                search_by_type
                break
            elsif input == '3'
                max_cp
                break
            elsif input == '4'
                add_pokemon_to_my_dex
                break
            elsif input == '5'
                view_my_dex
                break
            elsif input == '6'
                remove_pokemon_from_my_dex
                break
            elsif input == '7'
                delete_acct
                break
            elsif input == '8'
                exit_prog
                break
            elsif input.downcase == 'exit'
                break
            else
                puts 'Oh-no! Command not found, please try again.'
            end
        end

    end




end 
        
            
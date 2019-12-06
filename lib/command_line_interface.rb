require_relative "user"
require_relative "pokemon"
require_relative "team"

class CommandLineInterface

    #helper method - new line
    def spaces(num)
        num.times do
            puts ""
        end 
    end
    
   def greet 
    spaces(10)
    puts "                             GGGGGGGGGGGGG                 DDDDDDDDDDDDD        EEEEEEEEEEEEEEEEEEEEEEXXXXXXX       XXXXXXX "
    puts "                          GGG::::::::::::G                 D::::::::::::DDD     E::::::::::::::::::::EX:::::X       X:::::X "
    puts "                        GG:::::::::::::::G                 D:::::::::::::::DD   E::::::::::::::::::::EX:::::X       X:::::X "
    puts "                       G:::::GGGGGGGG::::G                 DDD:::::DDDDD:::::D  EE::::::EEEEEEEEE::::EX::::::X     X::::::X "
    puts "   ppppp   pppppppp     G:::::G       GGGGGG  ooooooooooo     D:::::D    D:::::D   E:::::E       EEEEEEXXX:::::X   X:::::XXX "
    puts "   p::::ppp:::::::::p  G:::::G              oo:::::::::::oo   D:::::D     D:::::D  E:::::E                X:::::X X:::::X  " 
    puts "   p:::::::::::::::::p G:::::G             o:::::::::::::::o  D:::::D     D:::::D  E::::::EEEEEEEEEE       X:::::X:::::X "   
    puts "   p::::::ppppp::::::pG:::::G    GGGGGGGGGGo:::::ooooo:::::o  D:::::D     D:::::D  E:::::::::::::::E        X:::::::::X   "  
    puts "   p:::::p     p:::::pG:::::G    G::::::::Go::::o     o::::o  D:::::D     D:::::D  E:::::::::::::::E        X:::::::::X   "  
    puts "   p:::::p     p:::::pG:::::G    GGGGG::::Go::::o     o::::o  D:::::D     D:::::D  E::::::EEEEEEEEEE       X:::::X:::::X "   
    puts "   p:::::p     p:::::pG:::::G        G::::Go::::o     o::::o  D:::::D     D:::::D  E:::::E                X:::::X X:::::X   "
    puts "   p:::::p    p::::::p G:::::G       G::::Go::::o     o::::o  D:::::D    D:::::D   E:::::E       EEEEEEXXX:::::X   X:::::XXX "
    puts "   p:::::ppppp:::::::p  G:::::GGGGGGGG::::Go:::::ooooo:::::oDDD:::::DDDDD:::::D  EE::::::EEEEEEEE:::::EX::::::X     X::::::X "
    puts "   p::::::::::::::::p    GG:::::::::::::::Go:::::::::::::::oD:::::::::::::::DD   E::::::::::::::::::::EX:::::X       X:::::X "
    puts "   p::::::::::::::pp       GGG::::::GGG:::G oo:::::::::::oo D::::::::::::DDD     E::::::::::::::::::::EX:::::X       X:::::X "
    puts "   p::::::pppppppp            GGGGGG   GGGG   ooooooooooo   DDDDDDDDDDDDD        EEEEEEEEEEEEEEEEEEEEEEXXXXXXX       XXXXXXX "
    puts "   p:::::p  "                                                                                                                
    printf("   p:::::p                         _,.+-----__,._\n");
    printf("   p:::::::p                      /  /    ,'     `.\n");
    printf("   p:::::::p             ,+._   ./...\\_  /   ,..   \\\n");
    printf("   p:::::::p             | `.`+'       `-' .' ,.|  |\n");
    printf("   ppppppppp             |  |( ,    ,.`,   |  `-',,........_       __......_\n");
    printf("                          \\ |..`/,-'  '\"\"\"' `\"\"'\"  _,.---\"-,  .-+-'      _.-\"\"`--._\n");
    printf("                           .\"|       /\"\\`.      ,-'       / .','      ,-'          \\\n");
    printf("                          .'-'      |`-'  |    `./       / / /       /   ,.-'       |\n");
    printf("                         j`v+\"      `----\"       ,'    ,'./ .'      /   |        ___|\n");
    printf("                         |                      |   _,','j  |      /    L   _.-\"'    `--.\n");
    printf("                          \\                     `.-'  j  |  L     F      \\-'             \\\n");
    printf("                           \\ .-.               ,'     |  L   .    /    ,'       __..      `\n");
    printf("                            \\ `.|            _/_      '   \\  |   /   ,'       ,\"    `.     '\n");
    printf("                             `.             '   `-.    `.__| |  /  ,'         |            |\n");
    printf("                               `\"-,.               `----'   `-.' .'   _,.--\"\"\"'\" --.      ,'\n");
    printf("                                  |          ,.                `.  ,-'              `.  _'\n");
    printf("                                 /|         /                    \\'          __.._    \\'\n");
    printf("                       _...--...' +,..-----'                      \\-----._,-'     \\    |\n");
    printf("                     ,'    |     /        \\                        \\      |       j    |\n");
    printf("                    /| /   |    j  ,      |                         ,._   `.    -'    /\n");
    printf("                    \\\\'   _`.__ | |      _L      |-----\\            `. \\    `._    _,'\n");
    printf("                     \"\"`\"'     \"`\"---'\"\"`._`-._,-'      `.              `.     `--'\n");
    printf("                                           \"`--.......____:.         _  / \\\n");
    printf("                                                   `-----.. `>-.....`,-'   \\\n");
    printf("                                                          `|\"    `.  ` . \\ |\n");
    printf(" ____________________________________________________       `._`..'    `-\"'\n");
    printf("                                                               \"' mh\n");
    puts "    For access please enter you name:     "
    puts " ____________________________________________________"
    spaces(2)
    puts signup_input = gets.chop
    @new_user = User.create(username: signup_input) 
    spaces(3)   
    puts " Hi #{@new_user.username}, thank you for choosing pGoDEX!"  
    spaces(5)   
    end 



    def list_types
        spaces(12)
        puts "____________________________________________________"
        puts   ""
        puts "                   POKEMON TYPES"
        puts "____________________________________________________"
        puts ""
        puts ""
        puts "          BUG         FIRE        NORMAL"
        puts "          DARK        FLYING      POISON"
        puts "          DRAGON      GHOST       PSYCHIC"
        puts "          ELECTRIC    GRASS       ROCK"
        puts "          FAIRY       GROUND      STEEL"
        puts "          FIGHTING    ICE         WATER"
        spaces(20)
        puts "____________________________________________________"
        puts   ""
        puts "    To return to MAIN MENU press [1]"
        puts "    To EXIT PROGRAM hit [2]"
        puts "____________________________________________________"
        spaces(3)
        answer = gets.chomp
        if answer == '1'
            main_menu
        elsif answer == '2'
            exit
        else 
            puts "____________________________________________________"
            puts   ""
            puts "          Wrong command, try again."
            puts "____________________________________________________"
            puts   ""
            list_types
        end 
    end 

#   returns list of pokemon according to the type passed in.    
    def search_by_type #2
        spaces(45)
        puts "____________________________________________________"
        puts   ""
        puts "              Enter POKEMPON TYPE"
        puts "____________________________________________________"
        spaces(3)
        input = gets.chomp.capitalize
        types_list = Pokemon.where(types: input).map {|pok| pok.pokemon_name}
        #binding.pry
        # #binding.pry
        if types_list[0] == nil
            spaces(10)
            puts "____________________________________________________"
            puts   ""
            puts " Ooops, looks like something went wrong. Try again."
            puts "____________________________________________________"
            spaces(10)
        else
            types_list
        end
        # # binding.pry
        # puts " "
        puts types_list
        spaces(10)
        puts "____________________________________________________"
        puts   ""
        puts "     To search again type [1] then ENTER"
        puts "     To return to MAIN MENU type [2] then ENTER"
        puts "     To EXIT PROGRAM type [3] then ENTER"
        puts "____________________________________________________"
        spaces(3)
        answer = gets.chomp
        if answer == '1'
            search_by_type
        elsif   answer == '2'
            main_menu
        elsif answer == '3'
            exit
        else 
            spaces(3)
            puts "____________________________________________________"
            puts   ""
            puts "          Wrong command, try again."
            puts "____________________________________________________"
            spaces(3)
            search_by_type
        end 
    end 

#   returns the max CP of a given pokemon 
    def max_cp  #3
        spaces(45)
        puts "____________________________________________________"
        puts   ""
        puts "              Enter POKEMON NAME"
        puts "____________________________________________________"
        spaces(5)
        input = gets.chomp.capitalize
        check = Pokemon.where(pokemon_name: input)
        if check[0] == nil
            spaces(45)
            puts "____________________________________________________"
            puts   ""
            puts " Ooops, looks like something went wrong. Try again."
            puts "____________________________________________________"
            spaces(3)
        else
            pokemon_cp = Pokemon.where(pokemon_name: input).map {|pok| pok.max_cp}
            spaces(140)
            puts "____________________________________________________"
            puts   ""
            puts "              #{input}'s Max CP is: " 
            puts "____________________________________________________"
            spaces(5)   
            puts "                   #{pokemon_cp[0]}"
        end
        spaces(5)
        puts "____________________________________________________"
        puts ""
        puts "     To search again type [1] then ENTER"
        puts "     To return to MAIN MENU type [2] then ENTER"
        puts "     To EXIT PROGRAM type [3] then ENTER"
        puts "____________________________________________________"
        spaces(3)
        answer = gets.chomp
        if answer == '1'
            max_cp
        elsif   answer == '2'
            main_menu
        elsif answer == '3'
            exit
        else 
            puts "____________________________________________________"
            puts   ""
            puts "          Wrong command, try again."
            puts "____________________________________________________"
            spaces(3)
            max_cp
        end 
    end 

#adds pokemon to my accout/pgodex
    def add_pokemon_to_my_dex #4
        spaces(35)
        puts "____________________________________________________"
        puts   ""
        puts "Enter Pokemon NAME that you want to add to your pGoDEX"
        puts "____________________________________________________"
        spaces(3)
        input = gets.chomp.capitalize

        check = Pokemon.where(pokemon_name: input)
        if check[0] == nil
            spaces(35)
            puts "____________________________________________________"
            puts   ""
            puts " Ooops, looks like something went wrong. Try again."
            puts "____________________________________________________"
            puts   ""
            add_pokemon_to_my_dex
        else
            to_add = Pokemon.find_by(pokemon_name: input)
            Team.create(user_id: @new_user.id, pokemon_id: to_add.id)
            spaces(45)
            puts "____________________________________________________"
            puts   ""
            puts "      #{input} has been added to your pGoDex."
            puts "____________________________________________________"
        end
        spaces(10)
        puts "_________________________________________________________"
        puts   ""
        puts "    To add another POKEMON to your pGoDEX [1] then ENTER"
        puts "    To return to MAIN MENU type [2] then ENTER"
        puts "    To EXIT PROGRAM type [3] then ENTER"
        puts "_________________________________________________________"
        puts   ""
        spaces(3)
        answer = gets.chomp
            if answer == '1'
                add_pokemon_to_my_dex
            elsif answer == '2'
                main_menu
            elsif answer == '3'
                exit
            else 
            spaces(45)
            puts "__________________________________________________________"
            puts   ""
            puts "   Wrong command, try again. Going back to MAIN MENU."
            puts "__________________________________________________________"
            spaces(3)
                main_menu
            end 
    end 

 #  allows user to view their pGoDEX   
    def view_my_dex #5
        spaces(45)
        puts "____________________________________________________"
        puts  ""
        puts "                   #{@new_user.username}'s pGoDEX "
        puts "____________________________________________________"
        my_team = Team.where(user_id: @new_user.id)
        show_my_team = my_team.map {|poke| Pokemon.find(poke.pokemon_id).pokemon_name}
        thisguy = ""
        show_my_team.each { |str| thisguy = thisguy + str + "\n" }  #\n -> new line

        if show_my_team.length == 0
            spaces(45)
            puts "______________________________________________________________________________________"
            puts   ""
            puts "   Your pGoDEX is empty. Go back to MAIN MENU & add POKEMON by selecting OPTION [4]."
            puts "______________________________________________________________________________________"
            spaces(5)
            puts "____________________________________________________"
            puts   ""
            puts "     To return to MAIN MENU type [1] then ENTER"
            puts "     To EXIT PROGRAM type [2] then ENTER"
            puts "____________________________________________________"
            answer = gets.chomp
            if answer == '1'
             main_menu
            elsif   answer == '2'
                exit
            else 
            puts "____________________________________________________"
            puts   ""
            puts "      Wrong command, going back to MAIN MENU."
            puts "____________________________________________________"
            puts   ""
                main_menu
            end
         end
        spaces(2)
        print thisguy
        puts ""
        puts " "
        puts "____________________________________________________"
        puts   ""
        puts "    To return to MAIN MENU type [1] then ENTER"
        puts "    To EXIT PROGRAM type [2] then ENTER"
        puts "____________________________________________________"
        puts   ""
        answer = gets.chomp
        if answer == '1'
            main_menu
        elsif   answer == '2'
            exit
        else 
        spaces(45)
        puts "____________________________________________________"
        puts   ""
        puts "     Wrong command, going back to MAIN MENU."
        puts "____________________________________________________"
        puts   ""
            main_menu
        end
        main_menu
    end 



#   deletes pokemon from users Team
    def remove_pokemon_from_my_dex #6
        spaces(35)
        puts "____________________________________________________"
        puts   ""
        puts "  Enter Pokemon NAME to remove from your pGoDEX"
        puts "____________________________________________________"
        puts   ""
        spaces(3)
        input = gets.chomp.capitalize
        input_id = Pokemon.where(pokemon_name: input)
        if(input_id.length > 0)
            thisthing = input_id[0].pokemon_id
        
         # if input is assoc w/User via Team, delete it
           
            my_team_ids = []  
            my_team = Team.where(user_id: @new_user.id)
            my_team.each { |pok| my_team_ids << pok.pokemon_id}
            
            if_false = my_team_ids.include?(thisthing)   #
            if if_false == false 

            puts "____________________________________________________"
            puts   ""
            puts "      INVALID ENTRY. TRY AGAIN."
            puts "____________________________________________________"
            remove_pokemon_from_my_dex 
            else
                x = Team.where(user_id: @new_user.id, pokemon_id: input_id[0].pokemon_id).pluck("id") # check = line324
                #binding.pry
                Team.destroy(x)
                spaces(35)
                puts "____________________________________________________"
                puts   ""
                puts "#{input} has been removed from your pGoDex."
                puts "____________________________________________________"
            end
            #binding.pry
            #my_team_ids = my_team.map { |pok| Pokemon.find(pok.pokemon_id).pokemon_id}
           
        else 

            spaces(35)
            puts "_____________________________________________________________________________________________"
            puts   ""
            puts "Your pGoDEX is currently empty. Go back to MAIN MENU & add POKEMON by selecting option [4]."
            puts "_____________________________________________________________________________________________"
            spaces(7)
            puts "____________________________________________________"
            puts   ""
            puts "     To return to MAIN MENU type [1] & hit ENTER"
            puts "     To EXIT PROGRAM type [2] & hit ENTER"
            puts "____________________________________________________"
            puts   ""
            answer = gets.chomp
                if answer == '1'
                    main_menu
                elsif answer == '2'
                    exit
                else 
                puts "____________________________________________________"
                puts   ""
                    puts    "Wrong command, going back to MAIN MENU."
                puts "____________________________________________________"
                puts   ""
                    main_menu
                end
        end 

        spaces(3)
        puts "____________________________________________________"
        puts   ""
        puts "    To return to MAIN MENU type [1] then ENTER"
        puts "    To EXIT PROGRAM type [2] then ENTER"
        puts "____________________________________________________"
            puts   ""
        answer = gets.chomp
        if answer == '1'
            main_menu
        elsif   answer == '2'
            exit
        elsif 
            binding.pry
            input != check[0].pokemon_name 
            puts "____________________________________________________"
            puts   ""
            puts "      Wrong command, going back to MAIN MENU."
            puts "____________________________________________________"
            puts   ""
            main_menu
        end


    end 
  
#   deletes current users acct    
    def delete_acct #7
        spaces(45)
        puts "__________________________________________________________"
        puts   ""
        puts "  Do you wish to delete your account? ENTER yes -or- no"
        puts "__________________________________________________________"
        spaces(3)
        input = gets.chomp
        if input == 'yes'
            #binding.pry
        #User.last.destroy
            this_id = User.last.id
            x = Team.where(user_id: this_id).pluck("id")
            Team.destroy(x)
            User.last.destroy 



        # to_delete = User.find_by(username: input)
        # binding.pry
        # x = Team.where(user_id: @new_user.id).pluck("id")
        # Team.destroy(x)
        spaces(35)
        puts "____________________________________________________"
        puts   ""
        puts "          Sorry to see you go. Goodbye!"
        puts "____________________________________________________"
        spaces(15)
        exit
        elsif input == 'no'
            main_menu
        else 
        puts "____________________________________________________"
        puts   ""
        puts "                 WRONG ENTRY"
        puts "____________________________________________________"
        puts   ""
            delete_acct
        end 
    end


    def main_menu
        spaces(7)
        puts "                   __      __        "
        puts "          /\\/\\    /__\\  /\\ \\ \\ /\\ /\\  "
        puts "         /    \\  /_\\   /  \\/ // / \\ \\ "
        puts "        / /\\/\\ \\//__  / /\\  / \\ \\_/ / "
        puts "        \\/    \\/\\__/  \\_\\ \\/   \\___/ "
        puts ""
        puts ""
        puts "  MAKE A SELECTION FROM THE MENU BELOW & HIT ENTER"
        puts ""
        puts "____________________________________________________"
        puts   ""
        puts "  [1]       -     List available POKEMON TYPES"
        puts "____________________________________________________"
        puts   ""
        puts "  [2]       -     Search for POKEMON by TYPE"
        puts "____________________________________________________"
        puts   ""
        puts "  [3]       -     View MaxCP of a POKEMON"
        puts "____________________________________________________"
        puts   ""
        puts "  [4]       -     Add POKEMON to your pGoDEX"
        puts "____________________________________________________"
        puts   ""
        puts "  [5]       -     View all POKEMON in your pGoDEX"
        puts "____________________________________________________"
        puts   ""
        puts "  [6]       -     Remove POKEMON from your pGoDEX"
        puts "____________________________________________________"
        puts   ""
        puts "  [7]       -     Delete your account"
        puts "____________________________________________________"
        puts   ""
        puts "  [Exit]    -     Exit program"
        puts "____________________________________________________"
        spaces(5)
        puts "  ENTER DESIRED MENU OPTION & hit ENTER:"
        spaces(3)

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
                exit
                break
            elsif input.downcase == 'exit'
                break
            else
            puts "____________________________________________________"
            puts   ""
                puts 'Oh-no! Command not found, please try again.'
            puts "____________________________________________________"
            puts   ""
            end
        end

    end




end 
        
            
require_relative '../config/environment'

cli = CommandLineInterface.new

puts "HELLO WORLD"
cli.greet
#cli.mini_menu
cli.main_menu


require_relative 'interface'
require_relative 'game'
require_relative 'word_reader'

current_path = File.dirname(__FILE__)
reader = Word_reader.new
hidden = reader.read_from_file(current_path + '/data/words.txt').sample.chomp
game = Game.new(hidden)
interface = Interface.new

system 'clear'
puts 'Добро пожаловать в игру виселица!'
sleep 2

loop do
  system('clear')
  game.check_win
  interface.show_image(reader, game.errors, current_path)
  interface.hidden_word_show(game.guessed_letters, game.hidden)
  interface.show_errors(game.errors, game.hidden)
  game.errors = game.check_letter(game.letter_input)
end

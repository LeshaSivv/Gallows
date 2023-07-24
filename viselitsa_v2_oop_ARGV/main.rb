require_relative 'interface'
require_relative 'game'

puts 'Добро пожаловать в игру виселица!'
if ARGV[0]
  hidden = ARGV[0]
else
  abort 'Введите загаданное слово в качестве параметра запуска программы'
end
game = Game.new(hidden)
interface = Interface.new
loop do
  system('clear')
  game.check_win
  interface.hidden_word_show(game.guessed_letters, game.hidden)
  interface.show_errors(game.errors, game.hidden)
  game.errors = game.check_letter(game.letter_input)
end

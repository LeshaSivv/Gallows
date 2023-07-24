class Game
  attr_accessor :hidden, :guessed_letters, :errors

  def initialize(hidden)
    @hidden = hidden
    @guessed_letters = []
    @errors = 0
  end

  def letter_input
    puts 'Введите букву:'
    a = $stdin.gets.chomp
    a = 'е' if a == 'ё'
    a = 'и' if a == 'й'
    a
  end

  def check_letter(letter_input)
    if @hidden.split('').uniq.include?(letter_input)
      @guessed_letters << letter_input
    else
      @errors += 1
    end
    @errors
  end

  def check_win
    abort 'Вы выйграли' if @hidden.split('').uniq.size == @guessed_letters.size
  end
end

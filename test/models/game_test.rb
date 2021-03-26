require "test_helper"

class GameTest < ActiveSupport::TestCase

  setup do
    @my_game = games :fresh_deck
  end

  test "it should be a fresh deck" do
    puts "Fresh deck:\n#{@my_game.deck}\n#{@my_game.deck.size} total.\n---"
    assert (@my_game.deck.size == 52) && (@my_game.hand.size == 0)
  end

  test "it should draw one card from the deck and put it in your hand" do
    @my_game.draw
    puts "After 1 draw:\n#{@my_game.deck}\n#{@my_game.deck.size} total.\n" \
         "#{@my_game.hand}\n#{@my_game.hand.size} total.\n---"
    assert (@my_game.deck.size == 51) && (@my_game.hand.size == 1)
  end 

  test "it should draw a bunch of cards from a new deck and conserve the total sum" do
    fresh_game = Game.new
    num_draws = rand(1..52)
    num_draws.times do fresh_game.draw end
    puts "after #{num_draws} draws, deck size #{fresh_game.deck.size} & hand size #{fresh_game.hand.size}\n---"
    assert (fresh_game.deck.size + fresh_game.hand.size) == 52
  end

  test "the show of the deck should put all cards in the hand" do
    puts "before: #{@my_game.hand.size} in hand"
    @my_game.show
    puts "after: #{@my_game.hand.size} in hand\n---\n"
  end

end

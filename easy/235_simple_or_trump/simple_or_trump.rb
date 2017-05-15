#!/usr/bin/env ruby -w
class Card
  TRUMP_DUCE_RANK = 15
  SIGN_CARD_RANK = {
    "J" => 11,
    "Q" => 12,
    "K" => 13,
    "A" => 14
  }
  attr_reader :rank

  def initialize(card, trump)
    @card = card
    @trump = trump
    @rank = card_to_rank(card, trump)
  end

  def to_s
    @card
  end

  private
    def card_to_rank(card, trump)
      number = card[0...-1]
      rank = SIGN_CARD_RANK[number] || number.to_i
      rank = TRUMP_DUCE_RANK if rank == 2 && card[-1] == trump
      rank
    end
end

def game(cards, trump)
  x, y = cards.map { |card| Card.new(card, trump) }
  if x.rank > y.rank
    x.to_s
  elsif x.rank == y.rank
    "#{x} #{y}"
  else
    y.to_s
  end
end

ARGF.each_line do |line|
  cards_str, trump = line.chomp.split(" | ")
  cards = cards_str.split
  puts game(cards, trump)
end



joe = %Player{name: "Joe"}
game = Game.start(joe)
mel = %Player{name: "Mel"}
game = Game.add_player(mel)
game = Game.start_round
"Joe cuts first"
game = Game.cut_for_deal(joe, on_card: 5) 0-51
"King of Hearts"
game = Game.cut_for_deal(mel, on_card: 10) 0-45 # all players have cut, assign dealer and pone positions for hand
"Ace of Spades"
"Mel is dealer"
Game.shuffle_deck(mel)
Game.offer_cut(mel, to: joe)
Game.accept_cut_offer(joe, 34) or Game.decline_cut_offer(joe)

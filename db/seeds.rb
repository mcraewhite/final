# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# Deletes everything from the database
puts "Deleting all records from the database..."
Card.delete_all
Game.delete_all
Rule.delete_all
Player.delete_all
User.delete_all

# Create the cards
puts "Creating cards"
rank = ["2","3","4","5","6","7","8","9","10","jack","queen","king","ace"]
value = [2,3,4,5,6,7,8,9,10,11,12,13,14]
suit = ["spades","clubs","hearts","diamonds"]
rank_value = rank.zip(value) # initializes a deck of cards
deck = rank_value.product(suit)

deck.each do |card|
	new_card = Card.create(rank:card[0][0], value: card[0][1], suit:card[1],is_face_up:false,is_wild:false)
end

#two_of_spades = Card.create(rank:"2", value: 2, suit:"spades",is_face_up:false,is_wild:false)
#three_of_spades = Card.create(rank:"3", value: 3, suit:"spades",is_face_up:false,is_wild:false)
#four_of_spades = Card.create(rank:"4", value: 4, suit:"spades",is_face_up:false,is_wild:false)
#five_of_spades = Card.create(rank:"5", value: 5, suit:"spades",is_face_up:false,is_wild:false)
#six_of_spades = Card.create(rank:"6", value: 6, suit:"spades",is_face_up:false,is_wild:false)
#seven_of_spades = Card.create(rank:"7", value: 7, suit:"spades",is_face_up:false,is_wild:false)
#eight_of_spades = Card.create(rank:"8", value: 8, suit:"spades",is_face_up:false,is_wild:false)
#nine_of_spades = Card.create(rank:"9", value: 9, suit:"spades",is_face_up:false,is_wild:false)
#ten_of_spades = Card.create(rank:"10", value: 10, suit:"spades",is_face_up:false,is_wild:false)
#jack_of_spades = Card.create(rank:"jack", value: 11, suit:"spades",is_face_up:false,is_wild:false)
#queen_of_spades = Card.create(rank:"queen", value: 12, suit:"spades",is_face_up:false,is_wild:false)
#king_of_spades = Card.create(rank:"king", value: 13, suit:"spades",is_face_up:false,is_wild:false)
#ace_of_spades = Card.create(rank:"ace", value: 14, suit:"spades",is_face_up:false,is_wild:false)
#two_of_clubs = Card.create(rank:"2", value: 2, suit:"clubs",is_face_up:false,is_wild:false)
#three_of_clubs = Card.create(rank:"3", value: 3, suit:"clubs",is_face_up:false,is_wild:false)
#four_of_clubs = Card.create(rank:"4", value: 4, suit:"clubs",is_face_up:false,is_wild:false)
#five_of_clubs = Card.create(rank:"5", value: 5, suit:"clubs",is_face_up:false,is_wild:false)
#six_of_clubs = Card.create(rank:"6", value: 6, suit:"clubs",is_face_up:false,is_wild:false)
#seven_of_clubs = Card.create(rank:"7", value: 7, suit:"clubs",is_face_up:false,is_wild:false)
#eight_of_clubs = Card.create(rank:"8", value: 8, suit:"clubs",is_face_up:false,is_wild:false)
#nine_of_clubs = Card.create(rank:"9", value: 9, suit:"clubs",is_face_up:false,is_wild:false)
#ten_of_clubs = Card.create(rank:"10", value: 10, suit:"clubs",is_face_up:false,is_wild:false)
#jack_of_clubs = Card.create(rank:"jack", value: 11, suit:"clubs",is_face_up:false,is_wild:false)
#queen_of_clubs = Card.create(rank:"queen", value: 12, suit:"clubs",is_face_up:false,is_wild:false)
#king_of_clubs = Card.create(rank:"king", value: 13, suit:"clubs",is_face_up:false,is_wild:false)
#ace_of_clubs = Card.create(rank:"ace", value: 14, suit:"clubs",is_face_up:false,is_wild:false)
#two_of_hearts = Card.create(rank:"2", value: 2, suit:"hearts",is_face_up:false,is_wild:false)
#three_of_hearts = Card.create(rank:"3", value: 3, suit:"hearts",is_face_up:false,is_wild:false)
#four_of_hearts = Card.create(rank:"4", value: 4, suit:"hearts",is_face_up:false,is_wild:false)
#five_of_hearts = Card.create(rank:"5", value: 5, suit:"hearts",is_face_up:false,is_wild:false)
#six_of_hearts = Card.create(rank:"6", value: 6, suit:"hearts",is_face_up:false,is_wild:false)
#seven_of_hearts = Card.create(rank:"7", value: 7, suit:"hearts",is_face_up:false,is_wild:false)
#eight_of_hearts = Card.create(rank:"8", value: 8, suit:"hearts",is_face_up:false,is_wild:false)
#nine_of_hearts = Card.create(rank:"9", value: 9, suit:"hearts",is_face_up:false,is_wild:false)
#ten_of_hearts = Card.create(rank:"10", value: 10, suit:"hearts",is_face_up:false,is_wild:false)
#jack_of_hearts = Card.create(rank:"jack", value: 11, suit:"hearts",is_face_up:false,is_wild:false)
#queen_of_hearts = Card.create(rank:"queen", value: 12, suit:"hearts",is_face_up:false,is_wild:false)
#king_of_hearts = Card.create(rank:"king", value: 13, suit:"hearts",is_face_up:false,is_wild:false)
#ace_of_hearts = Card.create(rank:"ace", value: 14, suit:"hearts",is_face_up:false,is_wild:false)
#two_of_diamonds = Card.create(rank:"2", value: 2, suit:"diamonds",is_face_up:false,is_wild:false)
#three_of_diamonds = Card.create(rank:"3", value: 3, suit:"diamonds",is_face_up:false,is_wild:false)
#four_of_diamonds = Card.create(rank:"4", value: 4, suit:"diamonds",is_face_up:false,is_wild:false)
#five_of_diamonds = Card.create(rank:"5", value: 5, suit:"diamonds",is_face_up:false,is_wild:false)
#six_of_diamonds = Card.create(rank:"6", value: 6, suit:"diamonds",is_face_up:false,is_wild:false)
#seven_of_diamonds = Card.create(rank:"7", value: 7, suit:"diamonds",is_face_up:false,is_wild:false)
#eight_of_diamonds = Card.create(rank:"8", value: 8, suit:"diamonds",is_face_up:false,is_wild:false)
#nine_of_diamonds = Card.create(rank:"9", value: 9, suit:"diamonds",is_face_up:false,is_wild:false)
#ten_of_diamonds = Card.create(rank:"10", value: 10, suit:"diamonds",is_face_up:false,is_wild:false)
#jack_of_diamonds = Card.create(rank:"jack", value: 11, suit:"diamonds",is_face_up:false,is_wild:false)
#queen_of_diamonds = Card.create(rank:"queen", value: 12, suit:"diamonds",is_face_up:false,is_wild:false)
#king_of_diamonds = Card.create(rank:"king", value: 13, suit:"diamonds",is_face_up:false,is_wild:false)
#ace_of_diamonds = Card.create(rank:"ace", value: 14, suit:"diamonds",is_face_up:false,is_wild:false)

# Create the game
puts "Creating game"
texas_hold_em = Game.create(game_type:"Hold Em Poker", game_name:"Texas Hold Em", game_desc:"Traditional Texas Hold Em where each player is dealt 2 cards and they share 5 communal cards. After cards are dealt, the player to the left of the dealer posts the small blind (half the minimum bet to play) and the player 2 seats to the left of the dealer posts the big blind (the minimum bet to play). Once all players have called the highest bet, 3 cards are dealt face-up in the middle of the table. Another round of betting ensues then another card is dealt face-up in the middle of the table. Once again a round of betting ensues then the final card is dealt face-up in the middle of the table followed by a final round of betting.")
five_card_draw = Game.create(game_type:"Draw Poker", game_name:"Five Card Draw", game_desc:"A common game for beginners. Players are dealt 5 cards face-down. After a round of betting, each player specifies how many of their cards they wish to replace and discards them. They then receive that many new cards from the deck. A final round of betting ensues and the winner is determined.")
seven_card_draw = Game.create(game_type:"Draw Poker", game_name:"Seven Card Draw", game_desc:"This game is very much like 5 Card Draw except players are dealt 7 cards face-down instead of 5. After a round of betting, each player specifies how many of their cards they wish to replace and discards them. They then receive that many new cards from the deck. A final round of betting ensues and the winner is determined using the best 5-card poker hand each player can produce.")
five_card_stud = Game.create(game_type:"Stud Poker", game_name:"Five Card Stud", game_desc:"Play begins with each player being dealt one card face down, followed by one card face up (beginning as usual with the player to the dealer's left). The first betting round begins with the player showing the highest-ranking upcard, who may check. If two players have the same high upcard, the one first in clockwise rotation from the dealer acts first. After the first betting round is complete, another face-up card is dealt to each player (after a burn card, starting with the player to the dealer's left, as with all subsequent rounds). Betting now begins with the player whose upcards make the best poker hand (since fewer than five cards are face up, this means no straights, flushes, or full houses). On this and subsequent betting rounds, the player to act first may check or bet up to the game's limit. The second betting round is followed by a third upcard to each player and a third betting round, again starting with the player with the best poker hand showing (thus, the first player to act on each round may change). A fourth face-up card and fourth betting round is followed by a showdown.")
seven_card_stud = Game.create(game_type:"Stud Poker", game_name:"Seven Card Stud", game_desc:"The game begins with each player being dealt two cards face down and one card face up. The first betting round begins with the player showing the highest-ranking upcard, who may check. If two players have the same high upcard, the one first in clockwise rotation from the dealer acts first. After the first betting round, another upcard is dealt to each player (after a burn card, and starting at the dealer's left as will all subsequent rounds), followed by a second betting round beginning with the player whose upcards make the best poker hand. Since fewer than five cards are face up, this means no straights, flushes, or full houses will count for this purpose. On this and all subsequent betting rounds, the player whose face-up cards make the best poker hand will act first, and may check or bet up to the game's limit. The second round is followed by a third upcard and betting round, a fourth upcard and betting round, and finally a downcard, a fifth betting round, and showdown if necessary. Seven-card stud can be summarized therefore as 'two down, four up, one down'. Upon showdown, each player makes the best five-card poker hand he can out of the seven cards he was dealt.")

# Create the rules
puts "Creating rules"
ace_high_low = Rule.create(rule_name: "Aces High/Low", rule_description:"Allows Aces to be high or low.", is_on:false)
ace_high = Rule.create(rule_name: "Aces High", rule_description:"Allows Aces to be high only.", is_on:true)
ace_low = Rule.create(rule_name: "Aces Low", rule_description:"Allows Aces to be low only.", is_on:false)
deuces_wild = Rule.create(rule_name: "Deuces Wild", rule_description:"Makes Twos wild (i.e. they can 'be' any other card)", is_on:false)
aces_wild = Rule.create(rule_name: "Ace Wild", rule_description:"Makes Aces wild (i.e. they can 'be' any other card)", is_on:false)
one_eyed_faces_wild = Rule.create(rule_name: "One Eyed Faces", rule_description:"Makes face cards with only one eye wild (i.e. they can 'be' any other card)", is_on:false)
suicide_kings = Rule.create(rule_name: "Suicide Kings", rule_description:"Makes Kings with a sword pointing into their head wild (i.e. they can 'be' any other card)", is_on:false)


# Create the players
puts "Creating players"
table = Player.create(player_name: "Table",seat_position: 0,is_dealer: false,is_table: true)
player_one = Player.create(player_name: "Adam",user_id: 1,seat_position: 1,is_dealer: true,is_table: false)
player_two = Player.create(player_name: "Kyle",user_id: 2,seat_position: 2,is_dealer: false,is_table: false)
player_three = Player.create(player_name: "Matt",user_id: 3,seat_position: 3,is_dealer: false,is_table: false)
player_four = Player.create(player_name: "Luke",user_id: 4,seat_position: 4,is_dealer: false,is_table: false)
player_five = Player.create(player_name: "Brad",user_id: 5,seat_position: 5,is_dealer: false,is_table: false)

# Create the users
puts "Creating users"
user_one = User.create(username: "adam1985", email:"awhite.junk@gmail.com",password:"password1234")
user_two = User.create(username: "kyle1986", email:"kwhite.junk@gmail.com",password:"password1234")
user_three = User.create(username: "matt1983", email:"mwhite.junk@gmail.com",password:"password1234")
user_four = User.create(username: "luke1986", email:"lrmernst.junk@gmail.com",password:"password1234")
user_five = User.create(username: "brad1986", email:"bboldt.junk@gmail.com",password:"password1234")



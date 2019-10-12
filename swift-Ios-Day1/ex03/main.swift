for elem in Deck.allSpades {

	print(elem)
}

for elem in Deck.allClubs {

	print(elem)
}

for elem in Deck.allHearts {

	print(elem)
}

for elem in Deck.allDiamonds {

	print(elem)
}

var cards : [Any] = Deck.allCards
cards.shuffle()

for elem in cards {
	print(elem)
}








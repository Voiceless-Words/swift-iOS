var ins: Deck = Deck(isSorted: false)
var cardsy: [Card] = Deck.allCards

ins.cards = cardsy 
ins.cards.shuffle() 

print(ins.draw()!)

print(ins.cards.count)

for elem in ins.cards {
	print(elem)
}








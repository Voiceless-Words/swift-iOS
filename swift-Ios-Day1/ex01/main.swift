let card1 = Card(color: Color.spades, value: Value.ace)
print(card1.description)

let card2 = Card(color: Color.diamonds, value: Value.jack)
print(card2.description)

print(card2.isEqual(card1))
print(card1 == card2)

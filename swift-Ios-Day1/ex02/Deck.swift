import Foundation

class Deck : NSObject {
	static let allSpades : [Card] = Value.allValues.map({(val) -> Card in return Card(color: Color.spades, value: val)}) 
	static let allDiamonds : [Card] = Value.allValues.map({(val) -> Card in return Card(color: Color.diamonds, value: val)}) 
	static let allHearts : [Card] = Value.allValues.map({(val) -> Card in return Card(color: Color.hearts, value: val)}) 
	static let allClubs : [Card] = Value.allValues.map({(val) -> Card in return Card(color: Color.clubs, value: val)}) 

	static let allCards : [Card] = allSpades + allDiamonds + allClubs + allHearts
}

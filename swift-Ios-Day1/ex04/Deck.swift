import Foundation

extension Array {
	mutating func shuffle() -> Void
	{
		var changePos = 0
		for i:Int in 0..<self.count
		{
			changePos = Int(arc4random_uniform(UInt32(self.count)))
			self.swapAt(i, changePos)
		}
	}
}

class Deck : NSObject {

	static let allSpades : [Card] = Value.allValues.map({(val) -> Card in return Card(color: Color.spades, value: val)}) 
	static let allDiamonds : [Card] = Value.allValues.map({(val) -> Card in return Card(color: Color.diamonds, value: val)}) 
	static let allHearts : [Card] = Value.allValues.map({(val) -> Card in return Card(color: Color.hearts, value: val)}) 
	static let allClubs : [Card] = Value.allValues.map({(val) -> Card in return Card(color: Color.clubs, value: val)}) 

	static let allCards : [Card] = allSpades + allDiamonds + allClubs + allHearts
	var cards: [Card] = []
	var discards: [Card] = []
	var outs: [Card] = []
	var isSorted: Bool

	init(isSorted: Bool)
	{
		self.isSorted = isSorted
	}

	override var description: String
	{
		var retVal: String = ""

		for e in self.cards {
			retVal = retVal + String(e.color.rawValue) + String(e.value.rawValue)
		}

		return retVal
	}

	func draw () -> Card? {
		self.outs.insert(self.cards[0], at: 0)
		self.cards.removeFirst(1)
		return self.outs[0]
	}

	func fold(c: Card) {
		if self.outs.contains(c) {
			self.discards.insert(c, at: 0)
		}
	}

}

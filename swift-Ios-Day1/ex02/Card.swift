import Foundation

class Card : NSObject {
	var color:Color
	var value:Value

	init(color:Color, value:Value)
	{
		self.color = color
		self.value = value
	}

	override var description: String {
		return "This card is \(self.value) of \(self.color)."
	}

	override func isEqual(_ Object: Any?) -> Bool {
		if Object is Card {
			if  self  == (Object as! Card) {
			return true
			} else {
				return false
			}
		} else {
			return false
		}
	}

	static func ==(card1: Card, card2: Card) -> Bool
	{
		if card1.color == card2.color && card1.value == card2.value {
			return true
		} else {
			return false
		}
	}
}

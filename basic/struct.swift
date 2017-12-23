/*
structures are always copied when they are passed around in your
code, but classes are passed as reference
*/

enum Rank: Int {
        case ace = 1
        case two, three, four, five, six, seven, eight, nine, ten
        case jack, queen, king
        func simpleDescription() -> String {
                switch self {
                case .ace:
                        return "ace"
                case .jack:
                        return "jack"
                case .queen:
                        return "queen"
                case .king:
                        return "king"
                default:
                        return String(self.rawValue)
                }
        }
}

enum Suit {
        case spades, hearts, diamonds, clubs
        func simpleDescription() -> String {
                switch self {
                case .spades:
                        return "spades"
                case .hearts:
                        return "hearts"
                case .diamonds:
                        return "diamonds"
                case .clubs:
                        return "clubs"
                //default:
                //      return String(self.rawValue)
                }
        }

        func color() -> String {
                switch self {
                case .spades:
                        return "black"
                case .clubs:
                        return "black"
                case .hearts:
                        return "red"
                case .diamonds:
                        return "red"
                }
        }
}

struct Card {
	var rank: Rank
	var suit: Suit
	func simpleDescription() -> String {
		return "The \(rank.simpleDescription()) of \(suit.simpleDescription())"
	}

	func fullDeck() -> String {
		/* how to trnverse enum: todo */
		return ""
	}
}
let threeOfSpades = Card(rank: .three, suit: .spades)
let threeOfSpadesDescription = threeOfSpades.simpleDescription()
print(threeOfSpadesDescription)
print(threeOfSpades.fullDeck())

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

func simpleCompare(l: Rank, r: Rank) -> Int {
	return l.rawValue - r.rawValue
}
let ace = Rank.ace
print(ace)
let aceSimpleDescription = ace.simpleDescription()
print(aceSimpleDescription)
let aceRawValue = ace.rawValue
print(aceRawValue)

let jack = Rank.jack
print(simpleCompare(l: ace, r: jack))

/* init?(rawValue:) */
if let convertedRank = Rank(rawValue: 3) {
	let threeDescription = convertedRank.simpleDescription()
	print(threeDescription)
}

/* in cases where there isn't a meaningful raw value */
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
		//	return String(self.rawValue)
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
let hearts = Suit.hearts
print(hearts.color())
let heartsDescription = hearts.simpleDescription()
print(heartsDescription)
print(Suit.clubs.color())

/* sunrise/sunset server response */
enum ServerResponse {
	case result(String, String)
	case failure(String)
	case date(String)
}

let success = ServerResponse.result("6:00 am", "8:09 pm")
let failure = ServerResponse.failure("Out of cheese.")
let date = ServerResponse.date("2017/11/19")
print(success)
print(failure)

switch date {
case let .result(sunrise, sunset):
	print("Sunrise is at \(sunrise) and sunset is at \(sunset)")
case let .failure(message):
	print("Failure... \(message)")
case let .date(time):
	print("Date \(time)")
}

public enum MQTTQOS: UInt8, CustomStringConvertible {
    case qos0 = 0
    case qos1
    case qos2

    public var description: String {
        switch self {
            case .qos0: return "qos0"
            case .qos1: return "qos1"
            case .qos2: return "qos2"
        }
    }
}

let qos =  MQTTQOS.qos0;
print(qos);

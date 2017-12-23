protocol ExampleProtocol {
	var simpleDescription: String { get }
	mutating func adjust()
}

/* Classes, enumerations, and structs can all adopt protocols. */
class SimpleClass: ExampleProtocol {
	var simpleDescription: String = "A very simple class."
	var anotherProperty: Int = 69105
	func adjust () {
		simpleDescription += " Now 100% adjusted."
	}
}
var a = SimpleClass()
a.adjust()
print(a.simpleDescription)

struct SimpleStructure: ExampleProtocol {
	var simpleDescription: String = "A simple structure"
	mutating func adjust() {
		simpleDescription += " (adjusted)"
	}
}
var b = SimpleStructure()
b.adjust()
print(b.simpleDescription)

enum SimpleEnumeration: ExampleProtocol {
	case Base, Adjusted
	var simpleDescription: String {
		return self.getDescription()
	}

	func getDescription() -> String {
		switch self {
		case .Base:
			return "A simple description of enumeration"
		case .Adjusted:
			return "Adjusted description of enumeration"
		}
	}

	mutating func adjust() {
		self = SimpleEnumeration.Adjusted
	}
}
var c = SimpleEnumeration.Base
c.adjust()
print(c.simpleDescription)

protocol ExampleProtocol {
	var simpleDescription: String { get }
	mutating func adjust()
}

extension Int: ExampleProtocol {
	var simpleDescription: String {
		return "The number \(self)"
	}

	mutating func adjust() {
		self += 42
	}
}
var integer = 7
integer.adjust()
print(integer.simpleDescription)

extension Double: ExampleProtocol {
	var absoluteValue: Double {
		if self < 0 {
			return self * -1
		} else {
			return self
		}
	}

	var simpleDescription: String {
		return "\(self)"
	}

	mutating func adjust() {
		if self < 0 {
			self *= -1
		}
	}
}
var double = -100.8
print(double.absoluteValue)
double.adjust()
print(double.simpleDescription)

class SimpleClass: ExampleProtocol {
        var simpleDescription: String = "A very simple class."
        var anotherProperty: Int = 69105
        func adjust () {
                simpleDescription += " Now 100% adjusted."
        }
}
var a = SimpleClass()

// in runtime, protocolValue has a runtime of SimpleClass
// in compile time, the compiler treats it as the given type of ExampleProtocol
var protocolValue: ExampleProtocol = a
protocolValue.adjust()
print(protocolValue.simpleDescription)
//print(protocolValue.anotherProperty)

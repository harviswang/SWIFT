// Write a name inside angle brackets to make a generic function or type.
func makeArray<Item>(repeating item: Item, numberOfTimes: Int) -> [Item] {
	var result = [Item]()
	for _ in 0 ..< numberOfTimes {
		result.append(item)
	}
	return result
}
print(makeArray(repeating: "knock", numberOfTimes: 4))

// You can make generic forms of functions and methods, as well as classes, enumerations, and structs

// Reimplement the Swift standard library's optional type
enum OptionalValue<Wrapped> {
	case none
	case some(Wrapped)
}
var possibleInteger: OptionalValue<Int> = .none
print(possibleInteger)
possibleInteger = .some(100)
print(possibleInteger)


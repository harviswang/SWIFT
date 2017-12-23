// What does _ mean in Swift language
// '_' can only appear in a pattern or on the left side of an assignment

var array: [Int] = [1, 2, 3]
print(array)

// '_' used as argument label, always means none-arugment-label
// argument label is mandatory without '_'
func add(_ lhs: Int, _ rhs: Int) -> Int {
	return lhs + rhs
}
print(add(2, 3))

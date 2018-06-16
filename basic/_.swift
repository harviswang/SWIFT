// What does _ mean in Swift language
// '_' can only appear in a pattern or on the left side of an assignment

var array: [Int] = [1, 2, 3]
print(array)

// '_' used as argument label, always means none-argument-label
// argument label is mandatory without '_'
func add(_ lhs: Int, _ rhs: Int) -> Int {
	return lhs + rhs
}
print(add(2, 3))

func sub(lhs: Int, rhs: Int) -> Int {
	return lhs - rhs
}
print(sub(lhs: 2, rhs: 3)) // 'lhs' and 'rhs' are argument labels

let _ = 2;
print(_)

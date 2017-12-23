func greet(person: String, lunch: String) -> String {
	return "Hello \(person), today's lunch is \(lunch)."
}
let greeting = greet(person: "Bob", lunch: "pisa")
print(greeting)

/*
 * By default, functions use their parameter names as labels for their arguments.
 * Write a custom argument label before the parameter name, or write _ to use no argument label.
 */
func greet(_ person: String, on day: String) -> String {
	return "Hello \(person), today is \(day)."
}
print(greet("John", on: "Wednesday"))

/* use a tuple to make a compound value */
func calculateStatistics(scores: [Int]) -> (min: Int, max: Int, sum: Int) {
	var min = scores[0]
	var max = scores[0]
	var sum = 0

	for score in scores {
		if score > max {
			max = score
		} else if score < min {
			min = score
		}
		sum += score
	}

	return (min, max, sum)
}
let statistics = calculateStatistics(scores: [5, 3, 100, 3, 9]);
print(statistics.sum);
print(statistics.0)
print(statistics.1)
print(statistics.2)

/* Functions can be nested */
func returnFifteen() -> Int {
	var y = 10
	func add() {
		y += 5
	}
	add()

	return y
}
print(returnFifteen())

/* Functions are a first-class type, a function can return another function as its vale */
func makeIncrementer() -> ((Int) -> Int) {
	func addOne(number: Int) -> Int {
		return 1 + number
	}

	return addOne
}

print(makeIncrementer()(1))
var increment = makeIncrementer()
print(increment(7))

/*
A function can take another function as one of its arguments.
Functions are actually a special case of closures: blocks of code that can be called later.
*/
func hasAnyMatches(list: [Int], condition: (Int) -> Bool) -> Bool {
	for item in list {
		if condition(item) {
			return true
		}
	}
	return false
}

func lessThanTen(x: Int) -> Bool {
	return x < 10
}

print(hasAnyMatches(list: [0, 8, 9, 2, 12], condition: lessThanTen))

/* closure */
var numbers = [20, 19, 7, 12]
let result = numbers.map({ (number: Int) -> Bool in
	let result = number % 2 != 0
	return result
})
print(numbers)
print(result)

let mappedNumbers = numbers.map({ number in number * 3});
print(mappedNumbers)

/*
You can refer to parameters by number instead of by name—this approach is especially useful in very short closures. 
*/
let sortedNumbers = numbers.sorted{(a, b) in a < b}
print(sortedNumbers)

let sortedNumbers2 = numbers.sorted{$0 > $1}
print(sortedNumbers2)

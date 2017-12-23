var occupations = [
	"Malclom": "Captain",
	"Kaylee": "Mechanic",
]
print(occupations)
occupations["Jayne"] = "Public Relations"
print(occupations)
occupations = [:] /* assigned to be empty dictionary */
print(occupations)

/* empty dictionary */
let emptyDictionary = [String: Float]()
print(emptyDictionary)

/* Dictionaries are an unordered collection, so their keys and values are iterated over in an arbitrary order. */
let interrestingNumbers = [
	"Prime": [2, 3, 5, 7, 11, 13],
	"Fibonacci": [1, 1, 2, 3, 5, 8],
	"Square": [1, 4, 9, 16, 25],
]
var largest = 0
var largestKind = ""
for (kind, numbers) in interrestingNumbers {
	for number in numbers {
		if number > largest {
			largest = number
			largestKind = kind
		}
	}
}
print(largest)
print(largestKind)

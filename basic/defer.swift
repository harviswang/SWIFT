// Use defer to write a block of code that is executed after all other code in
// the function, just before the function returns. The code is executed regardless
// of whether the function othrows an error.

var fridgeIsOpen = false
var fridgeContent = ["milk", "eggs", "leftovers"]

func fridgeContains(_ food: String) -> Bool {
	fridgeIsOpen = true
	defer {
		fridgeIsOpen = false
	}

	let result = fridgeContent.contains(food)
	return result
}
print(fridgeContains("banana"))
print(fridgeIsOpen)

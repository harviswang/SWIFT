var optionalString: String? = "Hello"
print(optionalString == nil)
print(optionalString == "Hello")

//var optionalName: String? = "John Appleseed"
var optionalName: String? /* the same as 'var optionalName: String? = nil' */
var greeting = "Hello!"
/* use if and let together to work with values that might be missing */
if let name = optionalName {
	greeting = "Hello, \(name)"
} else {
	greeting = "Hello, guy."
}
print(greeting)

/* ?? */
let nickName: String? = nil
let fullName: String = "John Appleseed"
let informalGreeting = "Hi \(nickName ?? fullName)"
print(informalGreeting)

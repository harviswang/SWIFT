/* constant variable, can't be changed */
let myConstant = 3.1415926
print(myConstant)

/* changeable variable */
var myVariable = 99
print(myVariable)

/* let the compiler infer its type */
let implicitInteger = 70
print(implicitInteger)

let implicitDouble = 70.0
print(implicitDouble)

let explicitDouble: Double = 70
print(explicitDouble)

let explicitFloat: Float = 4
print(explicitFloat)

/* type convert */
let label = "The width is "
let width = 94
let widthLabel = label + String(width)
print(widthLabel)

/* include values in string */
let apples = 3
let oranges = 5
let appleSummary = "I have \(apples) apples."
let fruitSummary = "I have \(apples + oranges) pieces of fruit."
print(appleSummary)
print(fruitSummary)

let salaryDouble = 40.8
let john = "Gom Jone"
let hiJohn = "Nice to see you \(john + "with salary " + String(salaryDouble))"
print(hiJohn)

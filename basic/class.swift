class Shape {
	var numberOfSides = 0
	let pi: Double = 3.14
	func simpleDescription() -> String {
		return "A shape with \(numberOfSides) sides."
	}

	func setNumberOfSides(sides: Int) -> Bool {
		numberOfSides = sides
		return true
	}
}

let shape: Shape = Shape()
shape.numberOfSides = 7
var shapeDescription = shape.simpleDescription()
print(shapeDescription)

class NamedShape {
	var numberOfSides: Int = 0
	var name: String

	init(name: String) {
		self.name = name
	}

	func simpleDescription() -> String {
		return "A shape with \(numberOfSides) sides."
	}
}

let namedShape = NamedShape(name: "Rectangle")
var namedShapeDescription = namedShape.simpleDescription()
print(namedShapeDescription)

class Square: NamedShape {
	var sideLength: Double

	init(sideLength: Double, name: String) {
		self.sideLength = sideLength
		super.init(name: name)
		numberOfSides = 4
	}

	func area() -> Double {
		return sideLength * sideLength
	}

	override func simpleDescription() -> String {
		return "A square with sides of length \(sideLength)"
	}
}

let test = Square(sideLength: 5.2, name: "My test square")
print(test.area())
print(test.simpleDescription())

class Circle: NamedShape {
	var radius: Double

	init(radius: Double, name: String) {
		self.radius = radius
		super.init(name: name)
		numberOfSides = 1
	}

	func area() -> Double {
		return 3.1415926 * radius * radius
	}

	override func simpleDescription() -> String {
		return "A circle with radius \(radius)"
	}
}
let circle = Circle(radius: 1.0, name: "Sun")
print(circle.area())
print(circle.simpleDescription())

class EquilateralTriangle: NamedShape {
	var sideLength: Double = 0.0

	init(sideLength: Double, name: String) {
		self.sideLength = sideLength
		super.init(name: name)
		numberOfSides = 3
	}

	var perimeter: Double {
		get {
			return 3.0 * sideLength
		}

		set {
			sideLength = newValue / 3.0
		}
	}

	override func simpleDescription() -> String {
		return "A equilateral triangle with sides of length \(sideLength)"
	}
}
let equilateralTriangle = EquilateralTriangle(sideLength: 4.0, name: "a triangle")
print(equilateralTriangle.perimeter)
equilateralTriangle.perimeter = 15
print(equilateralTriangle.perimeter)

class TriangleAndSquare {
	var triangle: EquilateralTriangle {
		willSet {
			square.sideLength = newValue.sideLength
		}
	}

	var square: Square {
		willSet {
			triangle.sideLength = newValue.sideLength
		}
	}

	init(size: Double, name: String) {
		square = Square(sideLength: size, name: name)
		triangle = EquilateralTriangle(sideLength: size, name: name)
	}
}
var triangleAndSquare = TriangleAndSquare(size: 10, name: "another test shape")
print(triangleAndSquare.square.sideLength)
print(triangleAndSquare.triangle.sideLength)
triangleAndSquare.square = Square(sideLength: 50, name: "larger square")
print(triangleAndSquare.triangle.sideLength)

/*
If the value before the ? is nil, everything after the ? is ignored and the value of the whole expression is nil. Otherwise, the optional value is unwrapped, and everything after the ? acts on the unwrapped value. In both cases, the value of the whole expression is an optional value.
*/
let optionalSquare: Square? = Square(sideLength: 2.5, name: "optional square")
let sideLength = optionalSquare?.sideLength
print(sideLength)

/* parenthesis after while is optional */
var n = 2
while (n < 100) {
	n *= 2
}
print(n)

var m = 2
repeat {
	m *= 2
} while(m < 100)
print(m)

/*
Use ..< to make a range that omits its upper value, and use ... to make a range that includes both values.
*/
var total = 0
for i in 0..<4 { /* it means integers in range [0, 4) */
	total += i
}
print(total)

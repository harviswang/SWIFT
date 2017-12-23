import Foundation /* for swift std-lib */

/* multi line string */
let apples = 8
let oranges = 8
let quotation = """
I said "I have \(apples) apples."
And then I said "I have \(apples + oranges) pieces of fruit."
"""
print(quotation)

let vegetable = "red pepper"
print(vegetable.hasSuffix("pepper"))

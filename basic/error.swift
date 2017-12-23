enum PrinterError: Error {
	case outOfPaper
	case noToner
	case onFire
}

// Use throw to throw an error and throws to mark a function that can throw an error.
// If you throw an error in a function, the function returns immediately and the code that called the function handled the error.
func send(job: Int, toPrinter printerName: String) throws -> String {
	if printerName == "Never Has Toner" {
		throw PrinterError.noToner
	}
	return "Job sent"
}

// an way to handle errors
do {
	let printerResponse = try send(job: 1040, toPrinter: "Never Has Toner")
	print(printerResponse)
} catch {
	print(error)
}

do {
	let printerResponse = try send(job: 1440, toPrinter: "Gutenberg")
	print(printerResponse)
	//throw PrinterError.onFire
	throw PrinterError.noToner
} catch PrinterError.onFire {
	print("I'll just put this over here, with the rest of the fire.")
} catch let printerError as PrinterError {
	print("Printer error: \(printerError).")
} catch {
	print(error)
}

// Another way to handle errors is to use try? to convert the result to an optional.
// If the function throws an error, the specific error is discarded and result is nil.
// Otherwise, the result is an optional containing the value that the function returned.
let printerSuccess = try? send(job: 1884, toPrinter: "Mergenthaler")
let printerFailure = try? send(job: 1885, toPrinter: "Never Has Toner")
if printerSuccess == nil {
	print("printerSuccess is nil")
} else {
	print("printerSuccess is not nil")
}

if printerFailure == nil {
	print("printerFailure is nil")
} else {
	print("printerFailure is not nil")
}

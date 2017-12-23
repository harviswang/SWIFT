// Use where right before the body to specify a list of requirements,
// for example, to require the type to implement a protocol, to require
// two type to be the same, or to require a class to have a particular superclass.

func anyCommonElements<T: Sequence, U: Sequence>(_ lhs: T, _ rhs: U) -> Bool
	where T.Iterator.Element: Equatable, T.Iterator.Element == U.Iterator.Element {
		for lhsItem in lhs {
			for rhsItem in rhs {
				if lhsItem == rhsItem {
					return true
				}
			}
		}
		return false
	}

print(anyCommonElements([1, 2, 3], [3]))

func anyCommonElements2<T: Sequence, U: Sequence>(_ lhs: T, _ rhs: U) -> [T.Element]
	where T.Iterator.Element: Equatable, T.Iterator.Element == U.Iterator.Element {
		var result = [T.Element]()
		for lhsItem in lhs {
			for rhsItem in rhs {
				if lhsItem == rhsItem {
					result.append(lhsItem)
				}
			}
		}
		return result
	}

print(anyCommonElements2([1, 2, 3], [3, 2]))

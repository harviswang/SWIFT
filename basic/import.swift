import Glibc


    public func random<T: BinaryInteger> (_ n: T) -> T {
        precondition(n > 0)

        let upperLimit = RAND_MAX - RAND_MAX % numericCast(n)

        while true {
            let x = Glibc.random()
            if x < upperLimit { return numericCast(x) % n }
        }
    }

print(random(5))
print(random(6))

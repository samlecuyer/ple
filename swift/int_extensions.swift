extension Int {
    var abs: Int {return self >= 0 ? self : -self}

    func factorial() -> Int {
        return (1...self).reduce(1, combine: {$0 * $1})
    }

    static var allOnes: Int {return ~allZeros}
}

assert(8.abs == 8)
assert(Int.allOnes == -1)
assert(10.factorial() == 3628800)

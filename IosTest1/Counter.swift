/// Plain Swift logic with no UI imports, so it can also be built and tested on Linux.
struct Counter {
    private(set) var value = 0

    mutating func increment() {
        value += 1
    }

    mutating func reset() {
        value = 0
    }
}
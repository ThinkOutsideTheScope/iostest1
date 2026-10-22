import XCTest
@testable import IosTest1

final class CounterTests: XCTestCase {
    func testStartsAtZero() {
        let counter = Counter()
        XCTAssertEqual(counter.value, 0)
    }

    func testIncrement() {
        var counter = Counter()
        counter.increment()
        counter.increment()
        XCTAssertEqual(counter.value, 2)
    }

    func testReset() {
        var counter = Counter()
        counter.increment()
        counter.reset()
        XCTAssertEqual(counter.value, 0)
    }
}
import XCTest
@testable import IosTest1

final class TemperatureTests: XCTestCase {
    func testStartsAtZero() {
        let temperature = Temperature()
        XCTAssertEqual(temperature.value, 0)
    }

    func testIncrement() {
        var temperature = Temperature()
        temperature.increment()
        temperature.increment()
        XCTAssertEqual(temperature.value, 2)
    }

    func testReset() {
        var temperature = Temperature()
        temperature.increment()
        temperature.reset()
        XCTAssertEqual(temperature.value, 0)
    }
}
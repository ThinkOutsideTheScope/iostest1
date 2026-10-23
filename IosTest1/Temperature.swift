/// Plain Swift logic with no UI imports, so it can also be built and tested on Linux.
struct Temperature {
    private(set) var value: Float = 0.0

    mutating func increment() {
        value += 1.0
    }

    mutating func reset() {
        value = 0.0
    }

	mutating func lerpAssign(sensorReadings: Float...) {
		if (sensorReadings.count == 0) {
			return
		}
		value = 0
		for reading in sensorReadings {
			value += reading
		}
		value /= Float(sensorReadings.count)
	}
}
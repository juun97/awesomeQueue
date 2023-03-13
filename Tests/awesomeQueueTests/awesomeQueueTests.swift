import XCTest
@testable import awesomeQueue

final class awesomeQueueTests: XCTestCase {
    func testExample() throws {
        let queue = awesomeQueue<Int>()
        queue.count
        XCTAssertEqual(queue.count, 0)
    }
}

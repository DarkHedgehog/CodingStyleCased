import XCTest
@testable import CodingStyleCased

final class CodingStyleCasedTests: XCTestCase {
    @CodingStyle(.camelCase) var camelString = "hasdfk dsa fdslhf adsl-sdgsdg_dsag"
    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(CodingStyleCased().text, "Hello, World!")
    }
}

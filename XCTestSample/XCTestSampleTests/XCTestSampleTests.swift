//
//  XCTestSampleTests.swift
//  XCTestSampleTests
//
//  Created by home on 2021/03/07.
//

import XCTest
@testable import XCTestSample

class XCTestSampleTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}

class PasswordValidatorTests: XCTestCase {
    
    // XCTestで書くテストケースは関数名の始まりを"test"とすることで、テストケースとして判別される。
    // 句読点は利用できないため、_で代用。
    // 8文字以上であること
    func test数字が2文字以上含まれており_合計7文字入力された場合にfalseが返されること() {
        XCTAssertFalse(validate(password: "abcde12"))
    }
    
    
}

//
//  XCTestSampleTests.swift
//  XCTestSampleTests
//
//  Created by home on 2021/03/07.
//

import XCTest
@testable import XCTestSample

class XCTestSampleTests: XCTestCase {
    // 各テストメソッドごとの初期化を行う
    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    // 各テストメソッドごとの後処理を行う
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
//    func test数字が2文字以上含まれており_合計7文字入力された場合にfalseが返されること() {
//        XCTAssertFalse(validate(password: "abcde12"))
//    }
    
//    func test数字が2文字以上含まれており_合計8文字入力された場合にtrueが返されること() {
//        XCTAssertTrue(validate(password: "abcdef12"))
//    }
    
//    func test数字が2文字以上含まれており_合計9文字入力された場合にtrueが返されること() {
//        XCTAssertTrue(validate(password: "abcdefg12"))
//    }
    
    //    // 数字が2文字以上利用されていること
    //    func test数字以外を7文字と_数字が1文字入力された場合にfalseが返されること() {
    //        XCTAssertTrue(validate(password: "abcdefg1"), "password is not true")
    //    }
    
//    func test数字以外を7文字と_数字が2文字入力された場合にtrueが返されること() {
//        XCTAssertTrue(validate(password: "abcdefg12"))
//    }
    
//    func test数字以外を7文字と_数字が3文字入力された場合にtrueが返されること() {
//        XCTAssertTrue(validate(password: "abcdefg123"))
//    }
    
    func testパスワードバリデーションの文字数() {
        XCTContext.runActivity(named: "数字が2文字以上含まれている場合") { _ in
            XCTContext.runActivity(named: "合計7文字入力された場合") { _ in
                XCTAssertFalse(validate(password: "abcde12"))
            }
            
            XCTContext.runActivity(named: "合計8文字入力された場合") { _ in
                XCTAssertTrue(validate(password: "abcdef12"))
            }
            
            XCTContext.runActivity(named: "合計9文字入力された場合") { _ in
                XCTAssertTrue(validate(password: "abcdefg12"))
            }
        }
    }
}

extension String {
    func isOnlyNumeric() -> Bool {
        // 文字列を.decimalDigitsのみでトリミングした場合に存在する文字の数が0個以下
        return self.trimmingCharacters(in: .decimalDigits).count <= 0
    }
}

func assertOnlyNumeric(string: String,
                       file: StaticString = #file,
                       line: UInt = #line) {
    XCTAssertTrue(string.isOnlyNumeric(), "\"\(string)\" is not only numeric.",
                  file: file,
                  line: line)
}

class NumericStringTests: XCTestCase {
    func testIsOnlyNumericString() {
        let numericStr = "a0123456789"
        assertOnlyNumeric(string: numericStr)
    }
}

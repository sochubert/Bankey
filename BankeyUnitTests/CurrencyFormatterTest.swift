//
//  CurrencyFormatterTest.swift
//  BankeyUnitTests
//
//  Created by Minjae Lee on 2022/11/26.
//

import Foundation
import XCTest

@testable import Bankey // 모든 Bankey 파일을 가져옴.

class Test: XCTestCase {
    var formatter: CurrencyFormatter!
    
    // setUp 함수는 테스트당 한번 불러와진다
    override func setUp() {
        super.setUp()
        formatter = CurrencyFormatter()
    }
    
    func testShouldBeVisible() throws {
        let result = formatter.breakIntoDollarsAndCents(929466.23)
        XCTAssertEqual(result.0, "929,466")
        XCTAssertEqual(result.1, "23")
    }
    
    func testDollarsFormatted() throws {
        let result = formatter.dollarsFormatted(929466.23)
        XCTAssertEqual(result, "US$929,466.23")
    }
    
    func testZeroDollarsFormatted() throws {
        let result = formatter.dollarsFormatted(0.00)
        XCTAssertEqual(result, "US$0.00")
    }
    
}

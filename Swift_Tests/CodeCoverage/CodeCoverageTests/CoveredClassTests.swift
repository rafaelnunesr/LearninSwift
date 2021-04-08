//
//  CoveredClassTests.swift
//  CodeCoverageTests
//
//  Created by Rafael Nunes Rios on 4/7/21.
//

import XCTest
@testable import CodeCoverage

class CoveredClassTests: XCTestCase {

    func testMaxWith1And2ShouldReturn2() {
        let result = CoveredClass.max(1, 2)
        XCTAssertEqual(result, 2)
    }
    
    func testMaxWith3And2ShouldReturn3() {
        let result = CoveredClass.max(3, 2)
        XCTAssertEqual(result, 3)
    }
    
    func testCommaSeparatedFrom2To4ShouldReturn234SeparatedByCommas() {
        let result = CoveredClass.commaSeparated(from: 2, to: 4)
        XCTAssertEqual(result, "2,3,4")
    }
    
    func testCommaSeparatedFrom2To4Should2() {
        let result = CoveredClass.commaSeparated(from: 2, to: 2)
        XCTAssertEqual(result, "2")
    }
    
    func testAreaWithWidth7ShouldReturn49() {
        let sut = CoveredClass()
        
        sut.width = 7
    
        XCTAssertEqual(sut.area, 49)
    }

}

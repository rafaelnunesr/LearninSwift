//
//  AssertYourselfUITests.swift
//  AssertYourselfUITests
//
//  Created by Rafael Nunes Rios on 4/5/21.
//

import XCTest

struct SimpleStruct  {
    let x: Int
    let y: Int
}

struct StructWithDescription: CustomStringConvertible {
    let x: Int
    let y: Int
    
    var description: String { "(\(x), \(y)" }
}

class AssertYourselfUITests: XCTestCase {

    func testFail() {
        let theAnswer = 42
        XCTFail("The answer to the Great question is \(theAnswer)")
    }
    
    func testAssertTrue() {
        let success = true
        XCTAssertTrue(success)
    }
    
    func testAssertNil() {
        let optionalValue: Int? = 123
        XCTAssertNil(optionalValue)
    }
    
    func testAssertNilWithSimpleStruct() {
        let optionalValue: SimpleStruct? = SimpleStruct(x: 1, y: 2)
        XCTAssertNil(optionalValue)
    }
    
    func testAssertNilWithSelfDescribingType() {
        let optionalValue: StructWithDescription?  = StructWithDescription(x: 1, y: 2)
        XCTAssertNil(optionalValue)
    }
    
    func testAssertEqual() {
        let actual = "actual"
        XCTAssertEqual(actual, "expected")
    }
    
    func testAssertEqualWithOption() {
        let result: String? = "foo"
        XCTAssertEqual(result, "bar")
    }
    
    func testFloatingPointDanger() {
        let result = 0.1 + 0.2
        XCTAssertGreaterThan(result, 0.3)
    }
    
    func testFloatingPointFixed() {
        let result = 0.1 + 0.2
        XCTAssertEqual(result, 0.3, accuracy: 0.0001)
    }
}

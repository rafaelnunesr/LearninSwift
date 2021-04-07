//
//  MyClassTests.swift
//  LifeCycleTests
//
//  Created by Rafael Nunes Rios on 4/6/21.
//

import XCTest
@testable import LifeCycle

class MyClassTests: XCTestCase {
    
    let sut = MyClass()
    //private var sut: MyClass!
    
//    override func setUp() {
//        super.setUp()
//        sut = MyClass()
//    }
//
//    override func tearDown() {
//        sut = nil
//    }
    
    func testMethodOne() {
        sut.methodOne()
    }
    
    func testMethodTwo() {
        sut.methodTwo()
    }
}

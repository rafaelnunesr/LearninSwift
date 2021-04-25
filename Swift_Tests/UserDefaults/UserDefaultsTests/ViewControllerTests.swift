//
//  ViewControllerTests.swift
//  UserDefaultsTests
//
//  Created by Rafael Nunes Rios on 4/23/21.
//

import XCTest
@testable import UserDefaults

class ViewControllerTests: XCTestCase {
    
    private var sut: ViewController!
    private var defaults: FakeUserDefaults!
    
    override func setUp() {
        super.setUp()
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        sut = storyboard.instantiateViewController(identifier: String(describing: ViewController.self))
        defaults = FakeUserDefaults()
        sut.userDefaults = defaults
    }
    
    override func tearDown() {
        sut = nil
        defaults = nil
        super.tearDown()
    }
    
    func testViewDidLoadWithEmptyUserDefaultsShouldShow0InCounterLabel() {
        sut.loadViewIfNeeded()
        XCTAssertEqual(sut.counterLabel.text, "0")
    }
    
    func testViewDidLoadWith7InUserDefaultsShouldShow7InCounterLabel() {
        defaults.integers = ["count": 7]
        sut.loadViewIfNeeded()
        XCTAssertEqual(sut.counterLabel.text, "7")
    }
    
    func testTappingButtonWith12InUserDefaultsShouldWrite13ToUserDefaults() {
        defaults.integers = ["count": 12]
        sut.loadViewIfNeeded()
        
        tap(sut.incrementButton)
        
        XCTAssertEqual(defaults.integers["count"], 13)
    }
}

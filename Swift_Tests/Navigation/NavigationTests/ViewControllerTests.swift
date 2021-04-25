//
//  ViewControllerTests.swift
//  NavigationTests
//
//  Created by Rafael Nunes Rios on 4/22/21.
//

import XCTest
@testable import Navigation

class ViewControllerTests: XCTestCase {

    private var viewController: ViewController!
    
    override func setUp() {
        viewController = ViewController()
    }
    
    override func tearDown() {
        viewController = nil
    }
    
    func testTappingCodePushButtonShouldPushCodeNextViewController() {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let sut: ViewController = storyboard.instantiateViewController(withIdentifier: "ViewController") as! ViewController
        
        sut.loadViewIfNeeded()
        let navigation = UINavigationController(rootViewController: sut)
        tap(sut.pushViewButton)
        
        executeRunLoop()
        
        XCTAssertEqual(navigation.viewControllers.count, 2, "navigation stack")
        
        let pushedVC = navigation.viewControllers.last
        
        guard let codeNextVC = pushedVC as? CodeNextViewController else {
            XCTFail("Expected CodeNextViewController, " + "but was \(String(describing: pushedVC))")
            return
        }
        XCTAssertEqual(codeNextVC.label.text, "Pushed from code")
    }
    
}

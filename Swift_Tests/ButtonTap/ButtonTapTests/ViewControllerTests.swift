//
//  ViewControllerTests.swift
//  ButtonTapTests
//
//  Created by Rafael Nunes Rios on 4/16/21.
//

import XCTest
@testable import ButtonTap


class ViewControllerTests: XCTestCase {

    func testTappingButton() {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let sut: ViewController = storyboard.instantiateViewController(withIdentifier: String(describing: ViewController.self)) as! ViewController
        sut.loadViewIfNeeded()
        tap(sut.button)
    }
    
}

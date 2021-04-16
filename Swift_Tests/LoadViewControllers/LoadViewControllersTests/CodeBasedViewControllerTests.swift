//
//  CodeBasedViewControllerTests.swift
//  LoadViewControllersTests
//
//  Created by Rafael Nunes Rios on 4/8/21.
//

import XCTest

@testable import LoadViewControllers

class CodeBasedViewControllerTests: XCTestCase {

    func testLoading() {
        let sut = CodeBasedViewController(data: "Dummy")
        sut.loadViewIfNeeded()
    }
    

}

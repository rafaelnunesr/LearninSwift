//
//  FakeUserDefaults.swift
//  UserDefaultsTests
//
//  Created by Rafael Nunes Rios on 4/23/21.
//

import Foundation

@testable import UserDefaults

class FakeUserDefaults: UserDefaultsProtocol {
    
    var integers: [String: Int] = [:]
    
    func set(_ value: Int, forKey defaultName: String) {
        integers[defaultName] = value
    }
    
    func integer(forKey defaultName: String) -> Int {
        integers[defaultName] ?? 0
    }
    
}

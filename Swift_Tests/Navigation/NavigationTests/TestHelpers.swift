//
//  TestHelpers.swift
//  NavigationTests
//
//  Created by Rafael Nunes Rios on 4/23/21.
//

import UIKit

func tap(_ button: UIButton) {
    button.sendActions(for: .touchUpInside)
}

func executeRunLoop() {
    RunLoop.current.run(until: Date())
}

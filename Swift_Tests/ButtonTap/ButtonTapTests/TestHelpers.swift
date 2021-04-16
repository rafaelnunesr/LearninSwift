//
//  TestHelpers.swift
//  ButtonTapTests
//
//  Created by Rafael Nunes Rios on 4/16/21.
//

import UIKit

func tap(_ button: UIButton){
    button.sendActions(for: .touchUpInside)
}

//
//  ViewController.swift
//  ButtonTap
//
//  Created by Rafael Nunes Rios on 4/16/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet private(set) var button: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction private func buttonTapped() {
        print(">> Button tapped")
    }

}


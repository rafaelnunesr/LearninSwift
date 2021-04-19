//
//  SegueNextViewController.swift
//  Navigation
//
//  Created by Rafael Nunes Rios on 4/18/21.
//

import UIKit

class SegueNextViewController: UIViewController {
    
    var labelText: String?
    
    @IBOutlet private(set) var label: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        self.label.text = self.labelText
    }
    

}

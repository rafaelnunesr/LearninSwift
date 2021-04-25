//
//  ViewController.swift
//  Refactoring
//
//  Created by Rafael Nunes Rios on 4/24/21.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        super.prepare(for: segue, sender: sender)
        if segue.identifier == "changePassword" {
            let changePasswordVC = segue.destination as? ChangePasswordViewController
            changePasswordVC?.securityToken = "TOKEN"
            changePasswordVC?.viewModel = ChangePasswordViewModel(okButtonLabel: "OK", enterNewPasswordMessage: "Please enter a new password", newPasswordTooShortMessage: "The new password should have at least 6 characters", confirmationPasswordDoesNotMatchMessage: "The new password and the confirmation password don't match. Please try again", successMessage: "Your password has been updated")
        }
    }

}


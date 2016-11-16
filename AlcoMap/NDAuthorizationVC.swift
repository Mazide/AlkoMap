//
//  NDAuthorizationVC.swift
//  AlcoMap
//
//  Created by Nikita Demidov on 06.11.16.
//  Copyright © 2016 Nikita Demidov. All rights reserved.
//


import UIKit

class NDAuthorizationVC: UIViewController {

    @IBOutlet weak var loginTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    lazy var loginService = NDLoginServiceVC()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    // MARK: UI actions
    
    @IBAction func login(sender: UIButton) {
        loginService.login(login: loginTextField.text, password: passwordTextField.text) { (succes, error) in
            if succes {
                self.showMapVC()
            } else {
                self.showWrongPasswordAlert()
            }
        }
    }
    
    //MARK: segue
    
    func showMapVC() {
        performSegue(withIdentifier: "authorizationToMap", sender: self)
    }
    
    //MARK:  alerts
    
    func showWrongPasswordAlert() {
        let alertController = UIAlertController(title: "Error", message: "Incorect password or login", preferredStyle: .alert)
        let okAction = UIAlertAction(title: "Ok", style: .default, handler: nil)
        alertController .addAction(okAction)
        present(alertController, animated: true, completion: nil)
    }
}

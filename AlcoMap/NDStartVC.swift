//
//  NDStartVC.swift
//  AlcoMap
//
//  Created by Nikita Demidov on 06.11.16.
//  Copyright © 2016 Nikita Demidov. All rights reserved.
//

import UIKit

class NDStartVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        performSegue(withIdentifier: "startToAuthorization", sender: self)
    }
}

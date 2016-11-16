//
//  NDLoginServiceVC.swift
//  AlcoMap
//
//  Created by Nikita Demidov on 06.11.16.
//  Copyright © 2016 Nikita Demidov. All rights reserved.
//

import UIKit

class NDLoginServiceVC: NSObject {
    func login(login: String?, password: String?, completionBlock: @escaping (Bool, NSError?) -> Void) {
        DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
            if login == "admin" && password == "password" {
                completionBlock(true, nil)
            } else {
                completionBlock(false, nil)
            }
        }
    }
}


//
//  SeerveVc.swift
//  Screen
//
//  Created by appinventiv on 26/09/17.
//  Copyright © 2017 appinventiv. All rights reserved.
//

import UIKit

class SeerveVc: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
    }
  
    @IBAction func signupBtn(_ sender: UIButton) {
        let obj = self.storyboard?.instantiateViewController(withIdentifier: "SignUpId") as? SignUpVc
        self.navigationController?.pushViewController(obj!, animated: true)
    }
}


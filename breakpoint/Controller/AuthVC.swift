//
//  AuthVC.swift
//  breakpoint
//
//  Created by Artem Lubytov on 09.12.2017.
//  Copyright © 2017 Artem Lubytov. All rights reserved.
//

import UIKit

class AuthVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func loginWithFBWasPressed(_ sender: Any) {
    }
    
    
    @IBAction func loginWithGoogleWasPressed(_ sender: Any) {
    }
    
    @IBAction func signInWithEmailWassPressed(_ sender: Any) {
        
        let loginVC = storyboard?.instantiateViewController(withIdentifier: "LoginVC")
        present(loginVC!, animated: true, completion: nil)
        
    }
    
}

//
//  CreatePostVC.swift
//  breakpoint
//
//  Created by Artem Lubytov on 20.12.2017.
//  Copyright © 2017 Artem Lubytov. All rights reserved.
//

import UIKit
import Firebase

class CreatePostVC: UIViewController {

    @IBOutlet weak var image: NSLayoutConstraint!
    @IBOutlet weak var emailLbl: UILabel!
    @IBOutlet weak var textView: UITextView!
    @IBOutlet weak var sendBtn: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        textView.delegate = self
        
    }

    @IBAction func closeBtnWassPressed(_ sender: Any) {
        
        dismiss(animated: true, completion: nil)
        
    }
    
    @IBAction func sendBtnWassPresses(_ sender: Any) {
        
        if textView.text != nil && textView.text != "Say something here..." {
            sendBtn.isEnabled = false
            
            DataService.instance.uploadPost(withMessage: textView.text, forUID: (Auth.auth().currentUser?.uid)!, withGroupKey: nil, sendComplete: { (success) in
                if success {
                    self.sendBtn.isEnabled = true
                    self.dismiss(animated: true, completion: nil)
                } else {
                    self.sendBtn.isEnabled = true
                    print("There was an error!")
                }
            })
        }
        
    }
    
}

extension CreatePostVC: UITextViewDelegate {
    
    func textViewDidBeginEditing(_ textView: UITextView) {
        textView.text = ""
    }
    
}

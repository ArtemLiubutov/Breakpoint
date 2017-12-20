//
//  MeVC.swift
//  breakpoint
//
//  Created by Artem Lubytov on 15.12.2017.
//  Copyright © 2017 Artem Lubytov. All rights reserved.
//

import UIKit

class MeVC: UIViewController {
    
    
    @IBOutlet weak var image: UIImageView!
    @IBOutlet weak var emailLbl: UILabel!
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBOutlet weak var signOutBtnWassPressed: UIButton!
}

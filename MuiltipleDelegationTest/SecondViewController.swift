//
//  SecondViewController.swift
//  MuiltipleDelegationTest
//
//  Created by Anas Almomany on 4/21/19.
//  Copyright © 2019 Anas Almomany. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    weak var filterVC: TEST!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        switch segue.destination {
            
        case let vc as TEST:
            self.filterVC = vc
            self.filterVC.delegate = self
        default:
            break
        }
    }
}

extension SecondViewController: TESTDelegate {
    func tap(tap: Tap) {
        print(tap == .on ? "Secound ON" : "Secound OFF")
    }
}

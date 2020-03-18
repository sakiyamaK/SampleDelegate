//
//  ViewController.swift
//  SampleDelegate
//
//  Created by sakiyamaK on 2020/03/15.
//  Copyright © 2020 sakiyamaK. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func touchDelegateButton(_ sender: Any) {
        Coordinator.shared.startVC(nowVC: self)
    }

}


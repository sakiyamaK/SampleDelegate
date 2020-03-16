//
//  NoDelegate1ViewController.swift
//  SampleDelegate
//
//  Created by sakiyamaK on 2020/03/15.
//  Copyright © 2020 sakiyamaK. All rights reserved.
//

import UIKit

class NoDelegate1ViewController: UIViewController {
    
    @IBAction func touchButton(_ sender: Any){

        guard let vc = UIStoryboard.init(name: "NoDelegate2", bundle: nil).instantiateInitialViewController() else {
            return
        }
        self.navigationController?.pushViewController(vc, animated: true)
    }
}

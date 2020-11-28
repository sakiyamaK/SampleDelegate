//
//  ClosureDelegate1ViewController.swift
//  SampleDelegate
//
//  Created by sakiyamaK on 2020/03/22.
//  Copyright © 2020 sakiyamaK. All rights reserved.
//

import UIKit

class ClosureDelegate1ViewController: UIViewController {

  var touchButtonDelegate: ((UIViewController)->Void)?

  @IBAction func touchButton(_ sender: Any) {
    touchButtonDelegate?(self)
  }
}

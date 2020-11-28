//
//  Delegate3ViewController.swift
//  SampleDelegate
//
//  Created by sakiyamaK on 2020/03/17.
//  Copyright © 2020 sakiyamaK. All rights reserved.
//

import UIKit

class Delegate3ViewController: UIViewController {
  private var morau: String?

  @IBOutlet weak var label: UILabel!

  override func viewDidLoad() {
    super.viewDidLoad()
    label.text = morau
  }

  func getOutData(morau: String) {
    self.morau = morau
  }
}

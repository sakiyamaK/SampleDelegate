//
//  Delegate2ViewController.swift
//  SampleDelegate
//
//  Created by sakiyamaK on 2020/03/17.
//  Copyright © 2020 sakiyamaK. All rights reserved.
//

import UIKit

protocol Delegate2ViewControllerDelegate: AnyObject {
    func touchButtonDelegate2(nowVC: Delegate2ViewController)
}


class Delegate2ViewController: UIViewController {
    weak var delegate: Delegate2ViewControllerDelegate?

    @IBAction func touchButton(_ sender: Any) {
        //delegateをの実装を持ってるファイルに処理を任せます(移譲)
        delegate?.touchButtonDelegate2(nowVC: self)
    }
}

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
    var coordinator: Coordinator = Coordinator()
    weak var delegate: Delegate2ViewControllerDelegate?

    override func viewDidLoad() {
        //Delegate1ViewControllerDelegateのメソッドを実装しているクラスを代入できる
        delegate = coordinator
    }

    @IBAction func touchButton(_ sender: Any) {
        //delegateをの実装を持ってるファイルに処理を任せます(移譲)
        delegate?.touchButtonDelegate2(nowVC: self)
    }
}

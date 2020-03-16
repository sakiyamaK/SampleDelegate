//
//  Delegate1ViewController.swift
//  SampleDelegate
//
//  Created by sakiyamaK on 2020/03/17.
//  Copyright © 2020 sakiyamaK. All rights reserved.
//

import UIKit

//Delegate1ViewControllerDelegateがもつfunctionの実装はこのファイルにない
protocol Delegate1ViewControllerDelegate: AnyObject {
    func touchButtonDelegate1(nowVC: Delegate1ViewController)
}

class Delegate1ViewController: UIViewController {

    var coordinator: Coordinator = Coordinator()
    weak var delegate: Delegate1ViewControllerDelegate?

    override func viewDidLoad() {
        //Delegate1ViewControllerDelegateのメソッドを実装しているクラスを代入できる
        delegate = coordinator
    }

    @IBAction func touchButton(_ sender: Any) {
        //delegateをの実装を持ってるファイルに処理を任せます(移譲)
        delegate?.touchButtonDelegate1(nowVC: self)
    }
}

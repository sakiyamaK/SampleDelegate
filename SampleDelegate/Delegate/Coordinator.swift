//
//  Coordinator.swift
//  SampleDelegate
//
//  Created by sakiyamaK on 2020/03/17.
//  Copyright © 2020 sakiyamaK. All rights reserved.
//

import UIKit

//Delegateの実装は複数もつことができる
//classの継承はひとつしかできないのでここが違う
class Coordinator: Delegate1ViewControllerDelegate, Delegate2ViewControllerDelegate {

    //シングルトンパターンの書き方 (いずれ説明、あまり使っちゃダメな手段なので説明はぶく)
    static let shared = Coordinator()
    private init(){}

    func startVC(nowVC: UIViewController) {
        guard
            let navigationController = nowVC.navigationController,
            let vc = UIStoryboard.init(name: "Delegate1", bundle: nil).instantiateInitialViewController() as? Delegate1ViewController else {
                return
        }

        vc.delegate = self
        navigationController.pushViewController(vc, animated: true)

    }
    //Delegate1ViewControllerDelegateがもつfunctionの実装はこのファイルにある
    func touchButtonDelegate1(nowVC: Delegate1ViewController) {
        guard
            let navigationController = nowVC.navigationController,
            let vc = UIStoryboard.init(name: "Delegate2", bundle: nil).instantiateInitialViewController()  as? Delegate2ViewController else {
            return
        }
        vc.delegate = self
        navigationController.pushViewController(vc, animated: true)
    }


    //Delegate2ViewControllerDelegateがもつfunctionの実装はこのファイルにある
    func touchButtonDelegate2(nowVC: Delegate2ViewController) {
        guard
            let navigationController = nowVC.navigationController,
            let vc = UIStoryboard.init(name: "Delegate3", bundle: nil).instantiateInitialViewController() as? Delegate3ViewController else {
                return
        }
        navigationController.pushViewController(vc, animated: true)
    }
}



/*
上はわかりやすくした書き方だが、実務ではこんなふうにextensionで分けて書く
 */

//class Coordinator {
//    static let shared = Coordinator()
//    private init(){}
//}
//
//extension Coordinator: Delegate1ViewControllerDelegate{
//    //Delegate1ViewControllerDelegateがもつfunctionの実装はこのファイルにある
//    func touchButtonDelegate1(nowVC: Delegate1ViewController) {
//        guard
//            let navigationController = nowVC.navigationController,
//            let vc = UIStoryboard.init(name: "Delegate2", bundle: nil).instantiateInitialViewController() else {
//                return
//        }
//        navigationController.pushViewController(vc, animated: true)
//    }
//}
//
//extension Coordinator: Delegate2ViewControllerDelegate{
//    //Delegate2ViewControllerDelegateがもつfunctionの実装はこのファイルにある
//    func touchButtonDelegate2(nowVC: Delegate2ViewController) {
//        guard
//            let navigationController = nowVC.navigationController,
//            let vc = UIStoryboard.init(name: "Delegate3", bundle: nil).instantiateInitialViewController() else {
//                return
//        }
//        navigationController.pushViewController(vc, animated: true)
//    }
//}

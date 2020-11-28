//
//  ClosureCoordinator.swift
//  SampleDelegate
//
//  Created by sakiyamaK on 2020/03/21.
//  Copyright © 2020 sakiyamaK. All rights reserved.
//

import UIKit

class ClosureCoordinator {

    //シングルトンパターンの書き方 (いずれ説明、あまり使っちゃダメな手段なので説明はぶく)
    static let shared = ClosureCoordinator()
    private init(){}

    func startVC(nowVC: UIViewController) {
        guard
            let navigationController = nowVC.navigationController,
            let vc = UIStoryboard.init(name: "ClosureDelegate1", bundle: nil).instantiateInitialViewController() as? ClosureDelegate1ViewController else {
                return
        }

        vc.touchButtonDelegate = self.showClosureDelegate2VC
//        vc.touchButtonDelegate = self.showClosureDelegate3VC
      /*ClosureCoordinator.shared.showClosureDelegate2VC でも同じ*/
        navigationController.pushViewController(vc, animated: true)
    }

    var showClosureDelegate2VC: ((UIViewController) -> Void) = { (nowVC) -> Void in
        guard
            let navigationController = nowVC.navigationController,
            let vc = UIStoryboard.init(name: "ClosureDelegate2", bundle: nil).instantiateInitialViewController()  as? ClosureDelegate2ViewController else {
                return
        }
        vc.touchButtonDelegate = ClosureCoordinator.shared.showClosureDelegate3VC
        navigationController.pushViewController(vc, animated: true)
    }

    var showClosureDelegate3VC: ((UIViewController) -> Void) = { (nowVC) -> Void in
        guard
            let navigationController = nowVC.navigationController,
            let vc = UIStoryboard.init(name: "ClosureDelegate3", bundle: nil).instantiateInitialViewController()  as? ClosureDelegate3ViewController else {
                return
        }
        navigationController.pushViewController(vc, animated: true)
    }
}

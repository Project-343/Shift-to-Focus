//
//  BaseViewController.swift
//  Shift to Focus
//
//  Created by Boyuan Xu on 10/10/20.
//

import UIKit

class BaseViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        initUI()
    }

}

extension BaseViewController {
    
    private func initUI() {
        view.backgroundColor = .systemBackground
    }
    
}

//
//  DetailViewController.swift
//  OtherIntroduction
//
//  Created on 2019/12/30.
//

import UIKit

class DetailViewController: UIViewController {
    /// 部員名ラベル
    @IBOutlet weak var memberNameLabel: UILabel!
    
    /// 部員名
    var memberName = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        memberNameLabel.text = memberName
        navigationItem.leftBarButtonItem = UIBarButtonItem(title: "トップメニュー",
                                                           style: .plain,
                                                           target: self,
                                                           action: #selector(tappedBackButton(_:)))
    }
    
    @objc private func tappedBackButton(_ sender: UIBarButtonItem) {
        navigationController?.popViewController(animated: true)
    }

}

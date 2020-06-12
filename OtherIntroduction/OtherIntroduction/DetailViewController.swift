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

        // Do any additional setup after loading the view.
    }

}

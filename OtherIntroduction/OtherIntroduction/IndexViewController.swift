//
//  IndexViewController.swift
//  OtherIntroduction
//
//  Created on 2019/12/30.
//

import UIKit

class IndexViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    @IBOutlet weak var tableView: UITableView!
    /// 年度ラベル
    @IBOutlet weak var yearLabel: UILabel!
    
    /// 紹介する部員名の一覧
    var memberList:[String] = ["A君", "Bさん", "Cさん", "Dさん", "E君"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        let dateFormatter = DateFormatter()
        dateFormatter.calendar = Calendar(identifier: .gregorian)
        dateFormatter.dateFormat = "yyyy"
        yearLabel.text = dateFormatter.string(from: Date()) + "年度 部員一覧"
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return memberList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell:UITableViewCell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel!.text = memberList[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let vc:UIViewController = DetailViewController()
        self.navigationController?.pushViewController(vc, animated: true)
    }

}

//
//  ViewController.swift
//  Week4
//
//  Created by csh on 2022/04/11.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    // 임의 데이터 넣기
    var items: [String] = ["Apple", "Facebook", "Google", "Kakao", "Naver", "NcSoft", "Github"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        tableView.delegate = self
        tableView.dataSource = self
    }
    
}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    
    // Section count
    public func numberOfSections(in tableView: UITableView) -> Int {
        return Array(Set(self.items.map{ $0.first! })).count
    }
    
    // Section title
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return String(Array(Set(self.items.map{ $0.first! })).sorted()[section])
    }
    
    // row 의 data 대입
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let charactor = Array(Set(self.items.map{ $0.first! })).sorted()[indexPath.section]
        let cell = tableView.dequeueReusableCell(withIdentifier: "CellList", for: indexPath)
        cell.textLabel?.text = self.items.filter{ $0.first == charactor }[indexPath.row]
        return cell
        
    }
    
    // Section의 Row count
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        let character = Array(Set(self.items.map{ $0.first! })).sorted()[section]
        return self.items.filter{ $0.first! == character }.count
    }
    
}

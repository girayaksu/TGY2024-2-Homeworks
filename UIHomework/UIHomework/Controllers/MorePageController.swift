//
//  MorePageController.swift
//  UIHomework
//
//  Created by Giray Aksu on 19.04.2024.
//

import Foundation
import UIKit

class MorePageController: UIViewController {
    
    @IBOutlet weak var morePageTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        morePageTableView.register(UINib(nibName: "MorePageTableViewCell", bundle: nil), forCellReuseIdentifier: "morePageTableViewCell")
        
    }
    
}

extension MorePageController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "morePageTableViewCell") as! MorePageTableViewCell
        return cell
    }
    
    
}

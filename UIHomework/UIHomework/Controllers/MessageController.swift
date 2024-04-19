//
//  MessageController.swift
//  UIHomework
//
//  Created by Giray Aksu on 19.04.2024.
//

import Foundation
import UIKit

class MessageController: UIViewController {
    
    @IBOutlet weak var buttonImage: UIBarButtonItem!
    @IBOutlet weak var messageTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        messageTableView.register(UINib(nibName: "MessageCell", bundle: nil), forCellReuseIdentifier: "messageCell")
        
    }
    
}

extension MessageController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "messageCell") as! MessageCell
        return cell
        
    }
    
    
}

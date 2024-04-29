//
//  TicketViewController.swift
//  JetBilet
//
//  Created by Giray Aksu on 29.04.2024.
//

import UIKit

class TicketViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.register(UINib(nibName: "TicketCell", bundle: nil), forCellReuseIdentifier: "ticketCell")
    }

}

extension TicketViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ticketCell", for: indexPath) as! TicketCell
        return cell
    }
    
    
}

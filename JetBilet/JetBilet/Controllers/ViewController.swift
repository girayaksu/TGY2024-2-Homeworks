//
//  ViewController.swift
//  JetBilet
//
//  Created by Giray Aksu on 29.04.2024.
//

import UIKit

protocol TicketDelegate: AnyObject {
    func sendTicketInfo(text: String)
}

class ViewController: UIViewController {
    
    @IBOutlet weak var nameText: UITextField!
    @IBOutlet weak var idText: UITextField!
    @IBOutlet weak var cityA: UITextField!
    @IBOutlet weak var cityB: UITextField!
    @IBOutlet weak var datePicker: UIDatePicker!
    let dateFormatter = DateFormatter()
    
    weak var delegate: TicketDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setInitView()
    }
    
    private func setInitView() {
        dateFormatter.dateFormat = "dd/MM/yyyy"
        
    }
    
    @IBAction func dataChanged(_ sender: Any) {
        let date = dateFormatter.string(from: (sender as AnyObject).date)
        print(date)
    }
    
    @IBAction func seatButton(_ sender: UIButton) {
        
        guard let nameText = nameText.text else { return }
        delegate?.sendTicketInfo(text: nameText)
        
    }
    
    
}



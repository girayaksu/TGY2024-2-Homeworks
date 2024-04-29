//
//  SeatViewController.swift
//  JetBilet
//
//  Created by Giray Aksu on 29.04.2024.
//

import UIKit

class SeatViewController: UIViewController {

    @IBOutlet var seats: [UIButton]!
    @IBOutlet weak var seatText: UITextField!
    
    var selectedSeats: [Int] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()

        for (index, button) in seats.enumerated() {
                button.tag = index //
                button.setTitle("\(index+1)", for: .normal)
            button.tintColor = UIColor.systemGray3
            }

    }
    
    @IBAction func seatSelected(_ sender: UIButton) {
        
        let selectedSeat = sender.tag + 1
        
        if sender.tintColor == UIColor.systemGreen {
                sender.tintColor = UIColor.systemGray3
                selectedSeats.removeAll { $0 == selectedSeat }
            
        } else {
            
            if selectedSeats.count >= 5 {
                showAlert()
            } else {
                sender.tintColor = UIColor.systemGreen
                selectedSeats.append(selectedSeat)
            }
        }
        
        let seatsString = selectedSeats.sorted().map(String.init).joined(separator: ", ")
        seatText.text = "Seçilen Koltuk No: \(seatsString)"
    }
    
    func showAlert() {
        let alert = UIAlertController(title: "Uyarı", message: "En fazla 5 koltuk seçilebilir!", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Tamam", style: .default, handler: nil))
        present(alert, animated: true)
    }
    
    
    @IBAction func tamamla(_ sender: UIButton) {
        
        
    }
    

}

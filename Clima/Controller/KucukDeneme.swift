//
//  KucukDeneme.swift
//  Clima
//
//  Created by Giray Aksu on 16.08.2023.
//  Copyright © 2023 App Brewery. All rights reserved.
//

import Foundation
import UIKit

extension UIButton {

let button = UIButton(frame: CGRect(x: 0, y: 0, width: 50, height: 50))
    func button;.backgroundColor = .red


    
    func makeCircular() {
        self.layer.cornerRadius = self.frame.width / 2
        self.clipsToBounds = true
    }
}

button.makeCircular()

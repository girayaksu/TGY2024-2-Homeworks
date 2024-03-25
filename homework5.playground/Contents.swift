import UIKit


//Euler 9

func pisagorSayiToplami(toplam: Int) -> Int {
    for c in 2..<toplam {
        for b in 1..<c {
            for a in 0..<b {
                if toplam.isMultiple(of: a + b + c) && a * a + b * b == c * c {
                    let carpan = toplam / (a + b + c)
                    return a * carpan * b * carpan * c * carpan
                }
            }
        }
    }
    return -1
}

print(pisagorSayiToplami(toplam: 1000))


//Euler 10

var sum = 0

func isPrime(number: Int) -> Bool {
    if number <= 1 {
        return false
    }
    for i in 2..<number {
        if number % i == 0 {
            return false
        }
    }
    return true
}

let sayi = 2000000

for num in 2...sayi {
    if isPrime(number: num) {
        sum += num
    }
}

print(sum)


// Keyboard hide extension nasıl yazarız ?

/*
 extension UIViewController {
     func hideKeyboardWhenTappedAround() {
         let tap = UITapGestureRecognizer(target: self, action: #selector(UIViewController.dismissKeyboard))
         tap.cancelsTouchesInView = false
         view.addGestureRecognizer(tap)
     }
     
     @objc func dismissKeyboard() {
         view.endEditing(true)
     }
 }
 
fonksiyonu çağırmak için:
 
 override func viewDidLoad() {
     super.viewDidLoad()
     self.hideKeyboardWhenTappedAround()
 }
 
 */

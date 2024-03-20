import UIKit

// İki parametreli ve farklı tipli bir generic örneği yapınız (T, U)


struct ArrayandBool<T, U> {
    var first: T
    var second: U
}


let ikili = ArrayandBool(first: ["apple", "banana", "cherry"], second: false)
print("First: \(ikili.first), Second: \(ikili.second)")


// Euler 7

func primeChecker(_ number: Int) -> Bool {
    
    guard number >= 2 else { return false }
        guard number != 2 else { return true }
        for i in 2..<number {
            if number % i == 0 {
                return false
            }
        }
        return true
    }

func NPrime(_ n: Int) -> Int {
    var sayac = 0
    var sayi = 2
    
    while true {
        
        if primeChecker(sayi) {
            sayac += 1
            
            if sayac == n {
                return sayi
            }
        }
        sayi += 1
    }
}

NPrime(100)



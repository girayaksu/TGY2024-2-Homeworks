import UIKit

//Fonksiyona parametre olarak verilen sayıya göre + - karakterlerini ekrana yazdıran bir fonksiyon yazınız. Örneğin 1 için sadece +, 2 için +-, 5 için +-+-+ şeklinde olmalıdır.

var dizi: [Character] = []

func artiEksi(_ sayi: Int) {
    
    for i in 1...sayi {
        
        if i % 2 != 0 {
            dizi.append("+")
        }
        else { dizi.append("-")
            
        }
    }
    print(String(dizi))

}


/*
 Fonksiyona parametre olarak verilen sayıyı en büyük yapacak şekilde 5 sayısını yanına koyunuz.
Örneğin parametre 0 için çıktı 50 olmalıdır. Parametre 28 için 528, parametre 920 için 9520 olmalıdır. 
 */

func biggestNumber (_ number: Int) -> Int {
    
    let numString = String(number)
    var bigNum = Int("5\(numString)") ?? 0
    
    for i in 0..<numString.count {
        
        let tempNumber = Int(numString.prefix(i) + "5" + numString.suffix(numString.count - i))
        bigNum = max(bigNum, tempNumber ?? 0)
    }
    return bigNum
}

import UIKit

/* SORU 1 ----- Hashable protokolü nedir ?
 
 Hashable protokolü, bir tipin nesnelerinin hash değerlerinin hesaplanabilmesini sağlar.hashable olmadığı durumda hashValue üretilemez.
 Dolayısıyla custom bir tipi dictionary key’i olarak kullanmak istersek hashable protokolünü conform edilmelidir.
 Burada hasValue değeri sayesinde unique değer üretilir. Kendi collection tipimizi oluştururken ihtiyacımız olur.
 Girilen key değeri hashable olmalıdır.

*/


// Soru 2 -----------Bir sınıfta en az bir yazılım dilini bilenlerin sayısı 24, sadece swift bilenler 12, sadece kotlin bilenler 8 olduğuna göre her iki dili bilenlerin sayısı kaçtır ?


var enAzBirYazilimBilen = Set<Int>()
var sadeceSwift = Set<Int>()
var sadeceKotlin = Set<Int>()

for i in 1...24 {
    enAzBirYazilimBilen.insert(i)
}
for j in 1...12 {
    sadeceSwift.insert(j)
}
for k in 12...19 {
    sadeceKotlin.insert(k)
}

let ikiDilBilen = enAzBirYazilimBilen.count - (sadeceSwift.count + sadeceKotlin.count)
print(ikiDilBilen)


// Euler Problem 6

var kucuk = 0
var buyuk = 0
var sum = 0

for m in 1...100 {
    kucuk += (m * m)
    sum += m
    buyuk = sum * sum
}

let result = buyuk - kucuk
print(result)


//Euler problem 5


func bolunenEnKucukBulma(_ sayi: Int) -> Bool {
    
        for q in 2...20 {
            if sayi % q != 0 {
                return true
            }
        }
        return false
}

var enKucukBolunen = 1

while bolunenEnKucukBulma(enKucukBolunen) {
    enKucukBolunen += 1
}

print(enKucukBolunen)




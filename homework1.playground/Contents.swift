import UIKit


// -3. SORU COUZUM-


var users = ["feyyaz" , "suleyman" , "barıs" , "merve" , "dogukan"]

if users.contains(""){
    print("Empty name error")
    
    
} else {

    for user in users.sorted(by: >) {

        print(user.uppercased())
     }
}


// -Project Euler 1. Soru Cozumu-

var sum: Int = 0

for number in 1..<1000 {
    
    if number%3 == 0 || number%5 == 0 {
        sum += number
    }
}

print(sum)



// -Project Euler 2. Soru Cozumu-


var suum = 0
var fibo:[Int] = [1,2]

for numbeeer in 2...100 {
    
    fibo.append(fibo[numbeeer - 2] + fibo[numbeeer - 1])
    
    if fibo[numbeeer - 1] % 2 == 0 {
        
        suum += fibo[numbeeer - 1]
    }
    
    if fibo[numbeeer] > 4000000 {
        
        break
    }
}
print(suum)



// -Project Euler 3. Soru Cozumu-

var p = 600851475143
var biggest = 1
for i in 2...p {
    
    while p % i == 0 {
        p = p / i
        biggest = i
    }
}
print(biggest)


// -2. SORU COZUM-

func sameword(_ mixSentence: String) {
    
    let words = mixSentence.split(separator: " ")
    
    var wordCounts = [String: Int]()
    
    for word in words {
        
        wordCounts[String(word), default: 0] += 1
        }
 
    for (word, count) in wordCounts {
            print("\(word): \(count) kere")
        }
}

let mixsentencee = "Merhaba nasılsınız iyiyim siz nasılsınız bende iyiyim"

sameword(mixsentencee)

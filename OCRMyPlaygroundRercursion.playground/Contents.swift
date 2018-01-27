import Foundation

// Example recursive function
// Transform parameter (Int) into binary number (String)
//

var str = ""
func binaryF(n:Int) -> String{
    
    // Best case n=0 and n=1 binary representation is the same respectively 0 and 1
    if n<2 {
        //  print(n)
        str = str+String(n)
    }
    // recursive case
    else {
        let lastDigit = n%2
        let rest = n/2
        binaryF(n: rest)
        // print(lastDigit)
        str = str+String(lastDigit)
    }
    return str
}
for nbr in 0...10 {
    print("Le nombre \(nbr) s'écrit en binaire: " +  binaryF(n: nbr))
    str = ""
}



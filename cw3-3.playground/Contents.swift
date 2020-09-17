
import Foundation
func isValidPassword(password:String?) -> Bool {
    guard password != nil else { return false }
 
    // at least one uppercase,
    // at least one digit
    // at least one lowercase
    // 8 characters total
    let passwordTest = NSPredicate(format:"SELF MATCHES %@", "(?=.*[A-Z])(?=.*[0-9])(?=.*[a-z]).{8,}")
    return passwordTest.evaluate(with: password)
}

isValidPassword(password: "Fajsn38947")

func checkPassword(password:String)->String{
    if password.count>=8
    {
        return "The password is valid"
    }
    else {
        return "The password is not vaild"
    }
    
}
checkPassword(password: "123456789")

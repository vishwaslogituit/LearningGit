import UIKit
class Bank_Account{
    var Balance = 0
    
    func Deposit(Amount: Int){
        self.Balance = self.Balance + Amount
    }
    func Withdraw(Amount: Int){
        self.Balance = self.Balance - Amount
    }
    

    
}
var object1 = Bank_Account()
object1.Deposit(Amount: 40)
print(object1.Balance)
object1.Withdraw(Amount: 20)
print(object1.Balance)

/*:
 [< Previous](@previous)           [Home](Introduction)           [Next >](@next)
 */
// Proxy

protocol Finance: AnyObject {
    var id: Int { get set }
    func pay(password: Int, clientId: Int)
}

class CreditCard: Finance {
    var id: Int
    private let bank: Bank
    private let password: Int
    
    init(password: Int,
         bank: Bank,
         id: Int
    ) {
        self.password = password
        self.bank = bank
        self.id = id
    }
    
    func pay(password: Int, clientId: Int) {
        if checkAccess(password) {
            bank.pay(password: password, clientId: clientId)
        }
    }
    
    func checkAccess(_ access: Int) -> Bool {
        if access == password {
            return true
        } else {
            return false
        }
    }
}

class Bank: Finance {
   private let clients: [Client]
   var id: Int = 12121212
    
    init(clients: [Client]) {
        self.clients = clients
    }
    
    func pay(password: Int, clientId: Int) {
        if clients[clientId].getPassword(access: id) == password {
            print("successful payment")
        }
    }
}

class Client {
    private let password: Int
    private let id: Int
    private weak var finance: Finance?
    
    init(finance: Finance,
         password: Int,
         id: Int
    ) {
        self.finance = finance
        self.password = password
        self.id = id
    }
    
    func payment() {
        finance?.pay(password: password, clientId: id)
    }
    
    func getPassword(access: Int) -> Int? {
        if finance?.id == access {
            return password
        } else {
            return nil
        }
    }
}

let bank = Bank(clients: [])

let creditCard = CreditCard(password: 00, bank: bank, id: 12121)

let client = Client(finance: creditCard, password: 00, id: 33333)

client.payment()

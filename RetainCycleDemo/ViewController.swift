import UIKit

class User {
    let name: String
    private(set) var phones: [Phone] = []
    
    init(name: String) {
        self.name = name
        print("User \(name) was initialized")
    }
    
    deinit {
        print("Deallocating user named: \(name)")
    }
    
    func add(phone: Phone) {
        phones.append(phone)
        phone.owner = self
    }
}

class Phone {
    let model: String
    var owner: User?
    
    init(model: String) {
        self.model = model
        print("Phone \(model) was initialized")
    }
    
    deinit {
        print("Deallocating phone named: \(model)")
    }
}

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        runScenario()
    }

    func runScenario() {
        let user = User(name: "John")
        let iPhone = Phone(model: "iPhone Xs")
        user.add(phone: iPhone)
    }

}


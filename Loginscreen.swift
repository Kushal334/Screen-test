Screen 1

import UIKit
import Parse

class ViewController: UIViewController {

    @IBOutlet weak var txtUsernameSignin: UITextField!
    @IBOutlet weak var txtPasswordSignin: UITextField!
    @IBOutlet weak var indicatorLogin: UIActivityIndicatorView!
    
    @IBOutlet weak var txtUsernameSignup: UITextField!
    @IBOutlet weak var txtPasswordSignup: UITextField!
    @IBOutlet weak var indicatorSignup: UIActivityIndicatorView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func signin(_ sender: Any) {
        
    }
    
    @IBAction func signup(_ sender: Any) {
        
    }

}

@IBAction func signin(_ sender: Any) {
        PFUser.logInWithUsername(inBackground: self.txtUsernameSignin.text!, password: self.txtPasswordSignin.text!) {
          (user: PFUser?, error: Error?) -> Void in
          if user != nil {
            self.displayAlert(withTitle: "Login Successful", message: "")
          } else {
            self.displayAlert(withTitle: "Error", message: error!.localizedDescription)
          }
        }
    }


@IBAction func signup(_ sender: Any) {
        let user = PFUser()
        user.username = self.txtUsernameSignup.text
        user.password = self.txtPasswordSignup.text
        
        self.indicatorSignup.startAnimating()
        user.signUpInBackground {(succeeded: Bool, error: Error?) -> Void in
            self.indicatorSignup.stopAnimating()
            if let error = error {
                self.displayAlert(withTitle: "Error", message: error.localizedDescription)
            } else {
                self.displayAlert(withTitle: "Success", message: "Account has been successfully created")
            }
        }
    }

@IBAction func logout(_ sender: Any) {
     PFUser.logOut()
 }


import UIKit
import Parse

class ViewController: UIViewController {
    
    @IBOutlet weak var txtUsernameSignin: UITextField!
    @IBOutlet weak var txtPasswordSignin: UITextField!
    @IBOutlet weak var indicatorSignin: UIActivityIndicatorView!
    
    @IBOutlet weak var txtUsernameSignup: UITextField!
    @IBOutlet weak var txtPasswordSignup: UITextField!
    @IBOutlet weak var indicatorSignup: UIActivityIndicatorView!
    
    @IBOutlet weak var btnLogout: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func signin(_ sender: Any) {
        PFUser.logInWithUsername(inBackground: self.txtUsernameSignin.text!, password: self.txtPasswordSignin.text!) {
          (user: PFUser?, error: Error?) -> Void in
          if user != nil {
            self.displayAlert(withTitle: "Login Successful", message: "")
          } else {
            self.displayAlert(withTitle: "Error", message: error!.localizedDescription)
          }
        }
    }
    
    @IBAction func signup(_ sender: Any) {
        let user = PFUser()
        user.username = self.txtUsernameSignup.text
        user.password = self.txtPasswordSignup.text
        
        self.indicatorSignup.startAnimating()
        user.signUpInBackground {(succeeded: Bool, error: Error?) -> Void in
            self.indicatorSignup.stopAnimating()
            if let error = error {
                self.displayAlert(withTitle: "Error", message: error.localizedDescription)
            } else {
                self.displayAlert(withTitle: "Success", message: "Account has been successfully created")
            }
        }
    }

 @IBAction func logout(_ sender: Any) {
        PFUser.logOut()
    }
    
    func displayAlert(withTitle title: String, message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "Ok", style: .default)
        alert.addAction(okAction)
        self.present(alert, animated: true)
    }
    
}


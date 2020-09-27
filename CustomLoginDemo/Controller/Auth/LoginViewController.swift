//
//  LoginViewController.swift
//  CustomLoginDemo
//
//  Created by Christopher Ching on 2019-07-22.
//  Copyright © 2019 Christopher Ching. All rights reserved.
//

import UIKit
import FirebaseAuth

class LoginViewController: UIViewController {
    
//MARK:- IBOutlets
    
    @IBOutlet weak var emailTextField: UITextField!
    
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBOutlet weak var loginButton: UIButton!
    
    @IBOutlet weak var errorLabel: UILabel!
    
    @IBOutlet weak var loginPageTitle: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        

        // Do any additional setup after loading the view.
        
        setUpElements()
    }
    
    func setUpElements() {
        
        // Hide the error label
        errorLabel.alpha = 0
        
        // Style the elements
        Utilities.styleTextField(emailTextField)
        Utilities.styleTextField(passwordTextField)
        Utilities.styleFilledButton(loginButton)
        
    }
    
    
    
    
    @IBAction func loginTapped(_ sender: Any) {
        
        // TODO: Validate Text Fields
        
        // Create cleaned versions of the text field
        let email = emailTextField.text!.trimmingCharacters(in: .whitespacesAndNewlines)
        let password = passwordTextField.text!.trimmingCharacters(in: .whitespacesAndNewlines)
        
        // Signing in the user
        Auth.auth().signIn(withEmail: email, password: password) { (result, error) in
            
            if error != nil {
                // Couldn't sign in
                self.errorLabel.text = error!.localizedDescription
                self.errorLabel.alpha = 1
                
                let alert = UIAlertController(title: "Error", message: error?.localizedDescription, preferredStyle: .alert)
                                 let defaultAction = UIAlertAction(title: "OK", style: .cancel, handler: nil)
                                 alert.addAction(defaultAction)
                                 self.present(alert, animated: true, completion: nil)
            }
            else {
                
                let homeViewController = self.storyboard?.instantiateViewController(identifier: Constants.Storyboard.homeViewController) as? HomeViewController
                
                self.view.window?.rootViewController = homeViewController
                self.view.window?.makeKeyAndVisible()
            }
        }
    }
    //MARK:-Forgot Password
    @IBAction func forgotPassword(_ sender: UIButton) {
            
            let forgotPasswordAlert = UIAlertController(title: "Forgot password?", message: "Enter resgistered email address", preferredStyle: .alert)
            forgotPasswordAlert.addTextField { (textField) in
                textField.placeholder = "Enter your email"
            }
            forgotPasswordAlert.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: nil))
            forgotPasswordAlert.addAction(UIAlertAction(title: "Reset Password", style: .default, handler: { (action) in
                let resetEmail = forgotPasswordAlert.textFields?.first?.text
                Auth.auth().sendPasswordReset(withEmail: resetEmail!, completion: { (error) in
                    if error != nil{
                        let resetFailedAlert = UIAlertController(title: "Reset Failed", message: "Error: \(String(describing: error?.localizedDescription))", preferredStyle: .alert)
                        resetFailedAlert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
                        self.present(resetFailedAlert, animated: true, completion: nil)
                    }else {
                        let resetEmailSentAlert = UIAlertController(title: "Reset password email sent successfully", message: "Check your primary inbox or spam folder", preferredStyle: .alert)
                        resetEmailSentAlert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
                        self.present(resetEmailSentAlert, animated: true, completion: nil)
                    }
                })
            }))
            self.present(forgotPasswordAlert, animated: true, completion: nil)
            //  self.performSegue(withIdentifier: "LoginToFP", sender: self)
            
            
        }
    //hide keyboard
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        emailTextField.resignFirstResponder()
        passwordTextField.resignFirstResponder()
        return true
    }
    func clear() {
        self.emailTextField.text?.removeAll()
        self.passwordTextField.text?.removeAll()
    }
    //MARK:-View Lifecycle
       override func viewWillAppear(_ animated: Bool) {
           loginPageTitle.alpha = 0
           
       }
       
       override func viewDidAppear(_ animated: Bool) {
            animateTitleInWithSpring()
          }
       
       func animateTitleInWithSpring(){
           UIView.animate(withDuration: 2.0, delay: 0.25, usingSpringWithDamping: 0.2, initialSpringVelocity: 5, options: [], animations: {
               self.loginPageTitle.alpha = 1
               self.loginPageTitle.frame.origin.y += 50
           }, completion: nil)
       }
       
    
    
}

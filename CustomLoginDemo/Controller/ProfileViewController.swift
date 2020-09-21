//
//  ProfileViewController.swift
//  CustomLoginDemo
//
//  Created by PRABALJIT WALIA     on 20/09/20.
//  Copyright © 2020 PRABALJIT WALIA. All rights reserved.
//

import UIKit
import Firebase


class ProfileViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        loadDetails()

        // Do any additional setup after loading the view.
    }
    //MARK:-
    @IBOutlet weak var emailLabel: UILabel!
    
    //MARK:-LogOut process
    @IBAction func logOutPressed(_ sender: UIButton) {
          
          let alertController = UIAlertController(title: nil, message: "Are you sure you want to Log Out", preferredStyle: .alert)
          alertController.addAction(UIAlertAction(title: "Log Out", style: .default, handler:{(_) in
              self.logOut()
          }))
          alertController.addAction(UIAlertAction(title: "Cancel", style:.cancel , handler: nil))
          present(alertController, animated: true,completion: nil)
          
          
      }
    func logOut(){
            do {
                try Auth.auth().signOut()
                
                navigationController?.popToRootViewController(animated: true)
                
            } catch let signOutError as NSError {
                print ("Error signing out: %@", signOutError)
            }
        }
    //MARK:-Retrieve from Databse
    let db = Firestore.firestore()
       func loadDetails(){
           
           db.collection("users").addSnapshotListener{ (querySnapshot, error) in
               
               
               if let e = error{
                   print("There was an error retrieving data from the firestore. \(e)")
               } else {
                   if let snapshotDocuments = querySnapshot?.documents {
                       for doc in snapshotDocuments {
                           let data = doc.data()
                           if let firstname = data["firstname"] as? String,
                               let uid = data["uid"] as? String{
                               self.emailLabel.text = firstname
                               
                           }
                           
                       }
                   }
               }
           }
       }
    
    


}

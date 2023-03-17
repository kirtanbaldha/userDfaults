//
//  ViewController.swift
//  userDfaults
//
//  Created by R&W on 15/02/23.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var textField1: UITextField!
    
    @IBOutlet weak var textField2: UITextField!
    
    
    @IBAction func buttonSave(_ sender: UIButton) {
        showAlert()
    }
    override func viewDidLoad() {
        super.viewDidLoad()
       
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let abc = segue.destination as! ViewController2
        abc.a1 = textField1.text!
        abc.a2 = textField2.text!
    }
    
    func showAlert(){
        let alert = UIAlertController(title: "save", message: "save", preferredStyle: .alert)
        alert.addAction(UIAlertAction.init(title: "save", style: .default, handler: { _ in
            UserDefaults.standard.set(self.textField1.text!,forKey: "userName")
            UserDefaults.standard.set(self.textField2.text!,forKey: "password")
            self.performSegue(withIdentifier: "cell", sender: self)
        }))
        alert.addAction(UIAlertAction.init(title: "cencal", style:.destructive, handler: nil))
        present(alert, animated: true, completion: nil)
    }
    
}


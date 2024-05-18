//
//  ViewController.swift
//  SwiftLearn
//
//  Created by Long Nguyen on 16/05/2024.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var labelNamSinh: UILabel!
    @IBOutlet weak var fieldNhapNamSinh: UITextField!
    @IBOutlet weak var labelSoTuoi: UILabel!
    @IBOutlet weak var labelAge: UILabel!
    
    @IBOutlet weak var btnCalculate: UIButton!
    var loadingMessage: UILabel!
    var age: Int = 0
    
    
    override func viewWillAppear(_ animated: Bool) {
        loadingMessage = UILabel()
        loadingMessage.text = "Loading..."
        view.addSubview(loadingMessage)
        
    }
    
    @IBAction func openChat(_ sender: Any) {
        let storyboard = self.storyboard?.instantiateViewController(withIdentifier: "chatscreen") as! firstViewController
        self.navigationController?.navigationBar.prefersLargeTitles = true
        self.navigationController?.pushViewController(storyboard, animated: true)
        
    }
    
    
    @IBAction func openLoginScreen(_ sender: Any) {
        let storyboard = self.storyboard?.instantiateViewController(withIdentifier: "loginScreen") as! Login
        self.navigationController?.navigationBar.prefersLargeTitles = true
        self.navigationController?.pushViewController(storyboard, animated: true)
    }
    
    @IBAction func calculateAge(_ sender: Any) {
        let namSinh = fieldNhapNamSinh.text ?? "1990"
        let convertedNamSinh = Int(namSinh)!
        let currentYear = Calendar.current.component(.year, from: Date())
        age = currentYear - convertedNamSinh
        labelAge.text = "\(age)"
        print("Số tuổi: \(age)")
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
  
    }
    

}



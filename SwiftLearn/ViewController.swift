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
    
    @IBAction func btnPressed(_ sender: Any) {
        var namSinh = fieldNhapNamSinh.text ?? "1990"
        var convertedNamSinh = Int(namSinh)!
        let currentYear = Calendar.current.component(.year, from: Date())
        age = currentYear - convertedNamSinh
        labelAge.text = "\(age)"
        print("Số tuổi: \(age)")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
  
    }
    

}


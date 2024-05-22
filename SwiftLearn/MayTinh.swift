//
//  MayTinh.swift
//  SwiftLearn
//
//  Created by Long Nguyen Thanh on 19/5/24.
//

import UIKit
import SnapKit

class MayTinh: UIViewController {
    
    
    @IBOutlet weak var lblPhepTinh: UILabel!
    
    @IBOutlet weak var lblKetQua: UILabel!
    
    var phepTinh: String = ""
    
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        clearAll()
        
    }
    //Clear all function
    func clearAll() {
        phepTinh = ""
        lblPhepTinh.text = ""
        lblKetQua.text = ""
    }
    
    func themVaoPhepTinh(giaTri: String) {
        phepTinh = phepTinh + giaTri
        lblPhepTinh.text = phepTinh
        
    }
    
    //Function button
    @IBAction func allClearTap(_ sender: Any) {
        clearAll()
    }
    
    @IBAction func backTap(_ sender: Any) {
        if(!phepTinh.isEmpty){
            phepTinh.removeLast()
            lblPhepTinh.text = phepTinh
        }
    }
    
    @IBAction func percentTap(_ sender: Any) {
        themVaoPhepTinh(giaTri: "%")
    }
    
    @IBAction func divideTap(_ sender: Any) {
        themVaoPhepTinh(giaTri: "/")
    }
    
    @IBAction func multiplyTap(_ sender: Any) {
        themVaoPhepTinh(giaTri: "*")
    }
    
    @IBAction func minusTap(_ sender: Any) {
        themVaoPhepTinh(giaTri: "-")
    }
    
    @IBAction func plusTap(_ sender: Any) {
        themVaoPhepTinh(giaTri: "+")
    }
    
    @IBAction func equalTap(_ sender: Any) {
        if validInput() {
            
            var modifiedWorkings = phepTinh.replacingOccurrences(of: "%", with: "*0.01")
                    
            // Ensure all numbers are treated as doubles
            modifiedWorkings = modifiedWorkings.replacingOccurrences(of: "(\\d+)", with: "$1.0", options: .regularExpression)
            let expression = NSExpression(format: modifiedWorkings)
            let ketQua = expression.expressionValue(with: nil, context: nil) as! Double
            let ketQuaFormatted = formatKetQua(ketQua: ketQua)
            lblKetQua.text = ketQuaFormatted
            print("Expression:\(expression)")
            print("Ket qua:\(ketQua)")
            print("Ket qua formatted:\(ketQuaFormatted)")
        }
        else
        {
            let alert = UIAlertController(title: "Invalid input", message: "Please check your input again", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "Okay", style: .default))
            self.present(alert, animated: true, completion: nil)
        }
    }
    
    func formatKetQua(ketQua: Double) -> String {
        if floor(ketQua) == ketQua {
            return String(format: "%.0f", ketQua)
        }
        else
        {
            return String(format: "%.2f", ketQua)
        }
    }
    
    //Function validate input
    func validInput() -> Bool {
        var previous: Int = -1
        var count = 0
        
        for char in phepTinh {
            if specialCharacter(char: char) {
                // Check if the special character is at the start or end
                if count == 0 || count == phepTinh.count - 1 {
                    return false
                }
                // Check if two special characters are adjacent
                if previous != -1 && count - previous == 1 {
                    return false
                }
                previous = count
            }
            count += 1
        }
        
        return true
    }

    
    //Function special char */+-
    func specialCharacter (char: Character) -> Bool {
        if (char == "*") {
            return true
        }
        if (char == "/") {
            return true
        }
        if (char == "+") {
            return true
        }
        if (char == "-") {
            return true
        }
        return false
    }
    
    //Number buttons
    
    
    @IBAction func decimalTap(_ sender: Any) {
        themVaoPhepTinh(giaTri: ".")
    }
    
    @IBAction func zeroTap(_ sender: Any) {
        themVaoPhepTinh(giaTri: "0")
    }
    
    @IBAction func oneTap(_ sender: Any) {
        themVaoPhepTinh(giaTri: "1")
    }
    
    @IBAction func twoTap(_ sender: Any) {
        themVaoPhepTinh(giaTri: "2")
    }
    
    @IBAction func threeTap(_ sender: Any) {
        themVaoPhepTinh(giaTri: "3")
    }
    
    @IBAction func fourTap(_ sender: Any) {
        themVaoPhepTinh(giaTri: "4")
    }
    
    @IBAction func fiveTap(_ sender: Any) {
        themVaoPhepTinh(giaTri: "5")
    }
    
    @IBAction func sixTap(_ sender: Any) {
        themVaoPhepTinh(giaTri: "6")
    }
    
    @IBAction func sevenTap(_ sender: Any) {
        themVaoPhepTinh(giaTri: "7")
    }
    
    @IBAction func eightTap(_ sender: Any) {
        themVaoPhepTinh(giaTri: "8")
    }
    
    @IBAction func nineTap(_ sender: Any) {
        themVaoPhepTinh(giaTri: "9")
    }
    
}

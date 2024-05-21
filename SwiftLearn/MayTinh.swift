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
    
    //Function buttons
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
        let expression = NSExpression(format: phepTinh)
        let result = expression.expressionValue(with: nil, context: nil) as! Double
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

//
//  MayTinh.swift
//  SwiftLearn
//
//  Created by Long Nguyen Thanh on 19/5/24.
//

import UIKit
import SnapKit

class MayTinh: UIViewController {

    var plusBtn: UIButton!
    var minusBtn: UIButton!
    var multiBtn: UIButton!
    var divideBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        plusBtn = UIButton()
        plusBtn.titleLabel?.text = "+"
        
        view.addSubview(plusBtn)
        plusBtn.snp.makeConstraints {
            $0.width.height.equalTo(50)
        }
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

//
//  firstViewController.swift
//  SwiftLearn
//
//  Created by Long Nguyen Thanh on 17/5/24.
//

import UIKit

class firstViewController: UIViewController {
    @IBOutlet weak var btnSend: UIButton!
    
    @IBOutlet weak var conversationView: UIScrollView!
    
    @IBOutlet weak var chatInputField: UITextField!
    @IBOutlet weak var messageText: UILabel!
    @IBAction func sendMessage(_ sender: UIButton) {
        let message = chatInputField.text ?? " "
        if message.isEmpty {
            print("Message is empty")
            return
        } else {
            messageText?.text = message
            conversationView.addSubview(messageText!)
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

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

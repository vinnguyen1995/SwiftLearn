//
//  NoteListViewController.swift
//  SwiftLearn
//
//  Created by Long Nguyen on 23/5/24.
//

import UIKit
import Foundation

final class Note {
    var title: String
    var noteContent: String
    
    init(title: String, noteContent: String) {
        self.title = title
        self.noteContent = noteContent
    }
}

class NoteListViewController: UIViewController{
    
    
    

    @IBOutlet weak var noteListCollectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "All notes"
        
        // Create an icon button

        
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



//
//  EditViewController.swift
//  TodoList
//
//  Created by Alexy Pocholle on 16/12/2022.
//

import UIKit

class EditViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        if let mydata = data{
            myDescE.text = mydata.desc
            myNE.text = mydata.name
            OldName = mydata.name
        }
        
        // Do any additional setup after loading the view.
    }
    

    @IBOutlet weak var myDescE: UITextView!
    @IBOutlet weak var myNE: UITextField!
    var data: MyData?
    var OldName : String?
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

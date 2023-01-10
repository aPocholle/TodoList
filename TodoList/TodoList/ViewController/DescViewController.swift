//
//  DescViewController.swift
//  TodoList
//
//  Created by Alexy Pocholle on 21/11/2022.
//

import UIKit

class DescViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        if let mydata = data{
            myDesc.text = mydata.desc
            myN.text = mydata.name
        }
        
        
        // Do any additional setup after loading the view.
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let vc = segue.destination as? EditViewController {
            vc.data = data
        }
    }
    
    
    
    @IBOutlet weak var myN: UILabel!
    @IBOutlet weak var myDesc: UITextView!
    var data: MyData?
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

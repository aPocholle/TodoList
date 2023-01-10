//
//  ViewController.swift
//  TodoList
//
//  Created by Alexy Pocholle on 07/11/2022.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return myData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell1", for: indexPath) as! TableViewCell
        
        let row = indexPath.row
        
        cell.MyLabel.text = myData[row].name
        cell.MySwitch.setOn(myData[row].finish, animated: true);
        
        
        return cell;
    }
    

    
    
    
    var myData : [MyData] = []
    @IBOutlet weak var MyTableView1: UITableView!
    @IBAction func AddElem(_ sender: UIButton) {
        
        
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        MyTableView1.dataSource = self
        // Do any additional setup after loading the view.
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let vc = segue.destination as? DescViewController {
            let row = MyTableView1.indexPathForSelectedRow!.row
            vc.data = myData[row]
        }
    }
    
    @IBAction func unwindToMainVC(_ unwindSegue: UIStoryboardSegue) {
        let sourceViewController = unwindSegue.source as! AddViewController
        if sourceViewController.myTask.text != ""{
            if let text = sourceViewController.myTask.text {
                if let description = sourceViewController.myDesc.text {
                    let status = sourceViewController.myStatus.isOn
                    let data = MyData(name: text,desc: description, finish: status)
                    myData.append(data)
                    
                }
            }
            
        }
        MyTableView1.reloadData()
        // Use data from the view controller which initiated the unwind segue
    }

    @IBAction func unwindToCancel(_ unwindSegue: UIStoryboardSegue) {
        // Use data from the view controller which initiated the unwind segue
    }
    
    @IBAction func unwindToDelete(_ unwindSegue: UIStoryboardSegue) {
        let sourceViewController = unwindSegue.source as! DescViewController
        if(myData[0].name == sourceViewController.myN.text){
            myData.remove(at: 0)
            MyTableView1.reloadData()
        }
        else{
            for i in 1...(myData.count-1){
                if(myData[i].name == sourceViewController.myN.text){
                    myData.remove(at: i)
                    MyTableView1.reloadData()
                }
            }
        }
        // Use data from the view controller which initiated the unwind segue
    }
    
    @IBAction func unwindToEdit(_ unwindSegue: UIStoryboardSegue) {
        let sourceViewController = unwindSegue.source as! EditViewController
        if(myData[0].name == sourceViewController.OldName){
            myData[0].setDesc(desc: sourceViewController.myDescE.text)
            if let text = sourceViewController.myNE.text {
                myData[0].setName(name: text)
            }
            MyTableView1.reloadData()
        }
        else{
            for i in 1...(myData.count-1){
                if(myData[i].name == sourceViewController.OldName){
                    myData[i].setDesc(desc: sourceViewController.myDescE.text)
                    if let text = sourceViewController.myNE.text {
                        myData[0].setName(name: text)
                    }
                    MyTableView1.reloadData()
                }
            }
        }
        // Use data from the view controller which initiated the unwind segue
    }
}


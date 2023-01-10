//
//  Data.swift
//  TodoList
//
//  Created by Alexy Pocholle on 07/11/2022.
//

import Foundation


class MyData {
    var name: String
    var finish: Bool
    var desc: String
    
    init(name: String, desc: String, finish: Bool) {
        self.name = name
        self.finish = finish
        self.desc = desc
    }
    
    func setDesc(desc: String){
        self.desc = desc
    }
    func setName(name: String){
        self.name = name
    }
    
    
}

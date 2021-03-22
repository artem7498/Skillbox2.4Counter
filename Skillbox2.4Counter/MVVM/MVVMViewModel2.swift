//
//  MVVMViewModel2.swift
//  Skillbox2.4Counter
//
//  Created by Артём on 11/9/20.
//

import Foundation

class MVVMViewModel2 {
    
    var number = 0
    var option = ""
    
    func set(){
        if option == "-"{
            number -= 1
        } else if option == "+"{
            number += 1
        } else {
            print("error")
        }
    }
    
    

    
    
    
    
    
}

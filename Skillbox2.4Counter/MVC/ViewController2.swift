//
//  ViewController2.swift
//  Skillbox2.4Counter
//
//  Created by Артём on 11/2/20.
//

import UIKit

protocol ViewController2Delegate{
    func setNumber(_ number: Int)
}

class ViewController2: UIViewController {
    
    var delegate: ViewController2Delegate?
    var number: Int = 0
    var option = ""
    
    @IBOutlet weak var numberLabel2: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        numberLabel2.text = "\(number)"

        // Do any additional setup after loading the view.
    }
    
    @IBAction func changeButton(_ sender: Any) {
        
        if option == "-"{
            number -= 1
            numberLabel2.text = "\(number)"
        } else if option == "+"{
            number += 1
            numberLabel2.text = "\(number)"
        } else {
            print("error")
        }
        
    }
    
    @IBAction func closeButton(_ sender: Any) {
        dismiss(animated: true, completion: nil)
        delegate?.setNumber(number)
    }
    

}

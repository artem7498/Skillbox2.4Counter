//
//  ViewController3.swift
//  Skillbox2.4Counter
//
//  Created by Артём on 11/2/20.
//

import UIKit


protocol ViewController3Delegate {
    func resetNumber(_ number: Int)
}


class ViewController3: UIViewController {
    
    var delegate: ViewController3Delegate?
    
    var num: Int = 0
    
    @IBOutlet weak var numberTextField: UITextField!
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func changeButton(_ sender: Any) {
        num = Int(numberTextField.text ?? "") ?? 0
        dismiss(animated: true, completion: nil)
        delegate?.resetNumber(num)
    }

}

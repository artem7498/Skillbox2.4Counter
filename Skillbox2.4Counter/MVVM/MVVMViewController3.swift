//
//  MVVMViewController3.swift
//  Skillbox2.4Counter
//
//  Created by Артём on 11/5/20.
//

import UIKit

protocol MVVMViewController3Delegate {
    func resetNumber(_ number: Int)
}

class MVVMViewController3: UIViewController {
    
    var delegate: MVVMViewController3Delegate?
    let viewModel = MVVMViewModel3()

    @IBOutlet weak var numberTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func changeButton3(_ sender: Any) {
        viewModel.num = Int(numberTextField.text ?? "") ?? 0
        dismiss(animated: true, completion: nil)
        delegate?.resetNumber(viewModel.num)
    }
    
}

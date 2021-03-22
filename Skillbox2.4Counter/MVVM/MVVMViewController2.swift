//
//  MVVMViewController2.swift
//  Skillbox2.4Counter
//
//  Created by Артём on 11/5/20.
//

import UIKit

protocol MVVMViewController2Delegate{
    func setNumber(_ number: Int)
}

class MVVMViewController2: UIViewController {
    
    var delegate: MVVMViewController2Delegate?
    let viewModel = MVVMViewModel2()

    @IBOutlet weak var numberLabel2: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        numberLabel2.text = String(viewModel.number)
    }
    
    @IBAction func changeButton2(_ sender: Any) {
        
        viewModel.set()
        numberLabel2.text = "\(viewModel.number)"
        
    }
    
    @IBAction func closeButton(_ sender: Any) {
        dismiss(animated: true, completion: nil)
        delegate?.setNumber(viewModel.number)
    }

}

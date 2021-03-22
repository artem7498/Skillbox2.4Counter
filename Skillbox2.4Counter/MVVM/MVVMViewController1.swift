//
//  MVVMViewController1.swift
//  Skillbox2.4Counter
//
//  Created by Артём on 11/5/20.
//

import UIKit

class MVVMViewController1: UIViewController {
    
    let viewModel = MVVMViewModel()

    @IBOutlet weak var numberLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        numberLabel.text = String(viewModel.number.name)

        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let vc = segue.destination as? MVVMViewController2, segue.identifier == "vc2", let option = sender as? String {
            vc.viewModel.option = option
            vc.viewModel.number = viewModel.number.name
            vc.delegate = self
            
        }
        
        if let vc = segue.destination as? MVVMViewController3, segue.identifier == "vc3" {
            
            vc.delegate = self
            
        }
    }
    
    @IBAction func plusButton(_ sender: Any) {
        
        performSegue(withIdentifier: "vc2", sender: "+")
    }
    
    
    @IBAction func minusButton(_ sender: Any) {
        performSegue(withIdentifier: "vc2", sender: "-")
    }
    
    
    @IBAction func changeButton(_ sender: Any) {
        performSegue(withIdentifier: "vc3", sender: nil)
    }
    

}



extension MVVMViewController1: MVVMViewController2Delegate{
    func setNumber(_ number: Int) {
        viewModel.number.name = number
        numberLabel.text = String(viewModel.number.name)
//        print(viewModel.number.name)
    }
    
    
}

extension MVVMViewController1: MVVMViewController3Delegate{
    func resetNumber(_ number: Int) {
        viewModel.number.name = number
        numberLabel.text = String(viewModel.number.name)
//        print(viewModel.number.name)
    }
    
    
}

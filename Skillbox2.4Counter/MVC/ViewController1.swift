//
//  ViewController1.swift
//  Skillbox2.4Counter
//
//  Created by Артём on 11/2/20.
//

import UIKit

class ViewController1: UIViewController {
    
    
    @IBOutlet weak var numberLabel: UILabel!
    
    var snumber = MVCModel(name: 0)
//    var snumber = MVCModel()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        numberLabel.text = String(snumber.name)
        print(numberLabel.text!)
        
        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let vc = segue.destination as? ViewController2, segue.identifier == "vc2", let option = sender as? String {
            vc.option = option
            vc.number = snumber.name
            vc.delegate = self
            
        }
        
        if let vc = segue.destination as? ViewController3, segue.identifier == "vc3" {
            
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

extension ViewController1: ViewController2Delegate{
    func setNumber(_ number: Int) {
        snumber.name = number
        numberLabel.text = String(snumber.name)
        print(snumber.name)
    }
    
    
}

extension ViewController1: ViewController3Delegate{
    func resetNumber(_ number: Int) {
        snumber.name = number
        numberLabel.text = String(snumber.name)
        print(snumber.name)
    }
    
    
}

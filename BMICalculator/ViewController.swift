//
//  ViewController.swift
//  BMICalculator
//
//  Created by 中村亮介 on 2021/03/15.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var height: UITextField!
    @IBOutlet weak var weight: UITextField!
    @IBOutlet weak var value: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        height.placeholder = "身長をcmで入力してください。"
        
        weight.placeholder = "体重をkgで入力してください。"
    }

    @IBAction func button(_ sender: Any) {
        let doubleH = Double(height.text!)
        let doubleW = Double(weight.text!)
        value.text = calculation(height: doubleH!, weight: doubleW!)
    }

    func calculation(height: Double, weight: Double) -> String {
    let h = height / 100
    let w = weight
    var result = w / (h * h)
    result = floor(result * 10) / 10
    
    return result.description
    }
    
}


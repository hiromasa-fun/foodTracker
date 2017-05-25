//
//  ViewController.swift
//  foodTracker
//
//  Created by 川北紘正 on 2017/05/25.
//  Copyright © 2017年 川北紘正. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITextFieldDelegate{
    //MARK: Properties
    @IBOutlet weak var mealNameLabel: UILabel!
    @IBOutlet weak var mealTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        mealTextField.delegate = self
    }
    //MARK: Action
    
    @IBAction func setDefaultLabelText(_ sender: UIButton) {
        mealNameLabel.text="デフォルトテキスト"
    }
    //MARK: UITestboxDelegateで指定されたメソッド
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        //リターンキーでキーボードを隠す
        textField.resignFirstResponder()
        return true
    }
    func textFieldDidEndEditing(_ textField: UITextField) {
        mealNameLabel.text = mealTextField.text
    }
}


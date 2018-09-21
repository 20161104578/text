//
//  ViewController.swift
//  wasd
//
//  Created by 20161104578 on 2018/9/21.
//  Copyright © 2018年 20161104578. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var text: UITextField!
    
    @IBOutlet weak var text1: UITextField!
    
    @IBOutlet weak var text2: UITextField!
    
    @IBAction func butten(_ sender: Any) {
        text2.text = "\(Int(text.text!)! + Int(text1.text!)!)"
    
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


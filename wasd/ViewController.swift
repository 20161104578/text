//
//  ViewController.swift
//  wasd
//
//  Created by 20161104578 on 2018/9/21.
//  Copyright © 2018年 20161104578. All rights reserved.
//

import UIKit
class ViewController: UIViewController
{
  
    @IBOutlet weak var text: UITextField!
    var num:Double = 0;
    var num1:Double = 0;
    var num2:Double = 0;
    var count:Int = 0
    var itt:Bool = false
    var operation:String = ""
    
    @IBAction func one(_ sender: Any)
    {
        let temp:String = text.text!
        text.text = temp + "1";
    
    }
    
    @IBAction func two(_ sender: Any)
    {
        let temp:String = text.text!
        text.text = temp + "2";
    }
    
    @IBAction func three(_ sender: Any)
    {
        let temp:String = text.text!
        text.text = temp + "3";
    }
    @IBAction func four(_ sender: Any)
    {
        let temp:String = text.text!
        text.text = temp + "4";
    }
    @IBAction func five(_ sender: Any)
    {
        let temp:String = text.text!
        text.text = temp + "5";
    }
    @IBAction func six(_ sender: Any)
    {
        let temp:String = text.text!
        text.text = temp + "6";
    }
    @IBAction func seven(_ sender: Any)
    {
        let temp:String = text.text!
        text.text = temp + "7";
    }
    @IBAction func eight(_ sender: Any)
    {
        let temp:String = text.text!
        text.text = temp + "8";
    }
    @IBAction func nine(_ sender: Any)
    {
        let temp:String = text.text!
        text.text = temp + "9";
    }
    @IBAction func zero(_ sender: Any)
    {
        let temp:String = text.text!
        text.text = temp + "0";
    }
    
    @IBAction func down(_ sender: Any) {
   
        
    }
    @IBAction func multiply(_ sender: Any) {
        
        
    }
    @IBAction func divide(_ sender: Any) {
        
        
    }
    
   @IBAction func add(_ sender: Any)
    {
        
        text.text = "+"
        text.text = "\(Int(text.text!)! + Int(text.text!)!)"
        
    }
    @IBAction func equal(_ sender: Any) {
        
     
        text.text = "\(Int(text.text!)! + Int(text.text!)!)"
    }
    func operators(op:String){
        switch op {
        case "+":
            operation = "+"
            if text.text != "" || !(text.text?.isEmpty)!{
                if ((text.text?.range(of: "=")) != nil){
                    num1 = num
                    text.text = "\(num)" + operation
                }else{
                    let temp:String = text.text!
                    num1 = Double.init(text.text!)!
                    text.text = temp + operation
                }
            }else{
                let temp:String = "0"
                num1 = num
                text.text = temp + operation
            }
            count = (text.text?.characters.count)!
        case "-":
            operation = "-"
            if text.text != "" || !(text.text?.isEmpty)!{
                if ((text.text?.range(of: "=")) != nil){
                    num1 = num
                    text.text = "\(num)" + operation
                }else{
                    let temp:String = text.text!
                    num1 = Double.init(text.text!)!
                    text.text = temp + operation
                }
            }else{
                let temp:String = "0"
                num1 = num
                text.text = temp + operation
            }
            count = (text.text?.characters.count)!
        case "*":
            operation = "*"
            if text.text != "" || !(text.text?.isEmpty)!{
                if ((text.text?.range(of: "=")) != nil){
                    num1 = num
                    text.text = "\(num)" + operation
                }else{
                    let temp:String = text.text!
                    num1 = Double.init(text.text!)!
                    text.text = temp + operation
                }
            }else{
                let temp:String = "0"
                num1 = num
               text.text = temp + operation
            }
            count = (text.text?.characters.count)!
        case "/":
            operation = "/"
            if text.text != "" || !(text.text?.isEmpty)!{
                if ((text.text?.range(of: "=")) != nil){
                    num1 = num
                    text.text = "\(num)" + operation
                }else{
                    let temp:String = text.text!
                    num1 = Double.init(text.text!)!
                    text.text = temp + operation
                }
            }else{
                let temp:String = "0"
                num1 = num
                text.text = temp + operation
            }
            count = (text.text?.characters.count)!
        default:
            break
        }
    }
    
    @IBAction func clear(_ sender: Any) {
        
        if text.text != "" || !(text.text?.isEmpty)!{
            //删除前一个字符串
            text.text?.remove(at: (text.text?.index(before: (text.text?.endIndex)!))!)
        }else{
            text.text = ""
        }
    }
    @IBAction func c(_ sender: Any) {
         text.text = ""
    }
    override func viewDidLoad() {
        text.text = ""//初始化
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

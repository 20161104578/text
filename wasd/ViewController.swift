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
    var control:Int = 0
    var control_minus:Int = 0
    var number_one:String = ""
    var NumberOfCalculate:Int = 0
    
  
    @IBAction func point(_ sender: Any)
    {
        let temp:String = text.text!
        text.text = temp + ".";
    }
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
        if control != 0 {
            equal(control)
        }
        control = 1
        number_one = text.text!
        text.text = ""
        NumberOfCalculate = 0
        
    }
    @IBAction func add(_ sender: AnyObject)
    {
        
        if control != 0 {
            equal(control)
            
        }
        control = 2
        number_one = text.text!
       // let temp:String = text.text!
        text.text = "+"
        NumberOfCalculate = 0
        /*  text.text = "+"
         text.text = "\(Int(text.text!)! + Int(text.text!)!)"*/
        
    }
    @IBAction func divide(_ sender: Any)
    {
        if control != 0 {
            equal(control)
        }
        control = 3
        number_one = text.text!
        text.text = ""
        NumberOfCalculate = 0
    }
    @IBAction func multiply(_ sender: Any) {
        
        if control != 0 {
            equal(control)
        }
        control = 4
        number_one = text.text!
        text.text = ""
        NumberOfCalculate = 0
    }
  
    
    @IBAction func equal(_ sender: Any) {
        
            var strtemp:String = ""
            switch control {
            case 1 :
                strtemp = "\(Double(number_one)! - Double(text.text!)!)"
            case 2 :
                strtemp = "\(Double(number_one)! + Double(text.text!)!)"
            case 3:
                strtemp = "\(Double(number_one)! / Double(text.text!)!)"
            case 4:
                strtemp = "\(Double(number_one)! * Double(text.text!)!)"
            default:
                strtemp = "0"
            }
            
            while (strtemp.last == "0"){
                strtemp.removeLast()
            }
            if (strtemp.last == "."){
                strtemp.removeLast()
            }
            text.text = strtemp
        
            control = 0
            number_one = text.text!
            NumberOfCalculate = NumberOfCalculate + 1
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

//对于？和！号的理解，简单理解声明变量时如果不初始化系统是不会给变量赋nil的，会报错，？的作用就是告诉系统这里如果没有初始化就是nil。同理，在用这类变量的时候，也需要加上？解包，如果加！就是强制解包，可以理解为让系统认为这个变量一定不是nil。

//
//  ViewController.swift


import UIKit

class ViewController: UIViewController {
    
    
    var Calculator:计算 = 计算()
    var 显示缓存:String = ""
    var cache = 0.0
    var cache2:Double?
    
    @IBOutlet weak var screen:UITextField!
    
  
    @IBAction func number0(sender: AnyObject) {
        点按("0")
    }
   
    
    @IBAction func number1(sender: AnyObject) {
        点按("1")
    }
    @IBAction func number2(sender: AnyObject) {
        点按("2")
    }
    @IBAction func number3(sender: AnyObject) {
        点按("3")
    }
    @IBAction func number4(sender: AnyObject) {
        点按("4")
    }
    @IBAction func number5(sender: AnyObject) {
        点按("5")
    }
    @IBAction func number6(sender: AnyObject) {
        点按("6")
    }
    @IBAction func number7(sender: AnyObject) {
        点按("7")
    }
    @IBAction func number8(sender: AnyObject) {
        点按("8")
    }
    @IBAction func number9(sender: AnyObject) {
        点按("9")
    }
    @IBAction func numbersqot(sender: AnyObject) {
        点按(".")
    }
    @IBAction func 算法加(sender: AnyObject) {
        Calculator.设置当前算法(.加法)
        求值()
    }
    @IBAction func 算法减(sender: AnyObject) {
        Calculator.设置当前算法(.减法)
        求值()
    }
    @IBAction func 算法乘(sender: AnyObject) {
        Calculator.设置当前算法(.乘法)
        求值()
    }
    @IBAction func 算法除(sender: AnyObject) {
        Calculator.设置当前算法(.除法)
        求值()
    }
    @IBAction func 算法平方(sender: AnyObject) {
        Calculator.设置当前算法(.平方)
        求值()
        
        
        
    }
    @IBAction func 算法指数幂(sender: AnyObject) {
       Calculator.设置当前算法(.指数幂)
        求值()
        
        
    }
    @IBAction func 重置当前(sender: AnyObject) {
        显示缓存 = ""
        self.screen.text = ""
        
    }
    @IBAction func 重置所有(sender: AnyObject) {
        显示缓存 = ""
        cache = 0.0
        cache2 = nil
        Calculator.设置当前算法(.未选择)
        self.screen.text = ""
        
    }
    @IBAction func 结果(sender: AnyObject) {
        求值()
    }
    func 点按(number:String) {
        显示缓存 += number
        self.screen.text = 显示缓存
    }
    func 求值() {
        
        if !显示缓存.isEmpty {
            let 临时 = 显示缓存 as NSString
            cache = 临时.doubleValue
            显示缓存 = ""
        }
        let 临时 = cache
        var 结果 = ""
        
        if let 前一个数字 = cache2 {
            结果 = Calculator.求结果(前一个数字, 被操作数: 临时)
            
            self.screen.text = 结果
            let 临 = 结果 as NSString
            cache2 = 临.doubleValue
        } else {
            cache2 = cache
            cache = 0.0
        }
        
    }

    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        screen.editing
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


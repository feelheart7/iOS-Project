//
//  ViewController.swift
//  计算器demo
//
//  Created by wejudging on 2018/11/25.
//  Copyright © 2018 wejudging. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var num1TextField: UITextField!
    @IBOutlet weak var num2TextField: UITextField!
    @IBOutlet weak var resultLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    
    @IBAction func sum(_ sender: Any) {
        
        //1.拿到两个字符串并把字符串转化为数值
        let sum1String = self.num1TextField.text 
        let sum2String = self.num2TextField.text
       
        //判断
        if  sum2String?.count == 0 && sum1String?.count == 0{
            showInfo(site: "请输入这二个数")
        }
        else if  sum1String?.count == 0{
            showInfo(site: "请输入第一个数")
                }
        else if  sum2String?.count == 0{
            showInfo(site: "请输入第二个数")
        }
        
        //2.把字符串转化为I数值
        let sum1 = Int(sum1String!) ?? 0
        let sum2 = Int(sum2String!) ?? 0
        
        //3.加
        let sum =  (sum1+sum2)
        
        //4.输出结果
        self.resultLabel.text = String(sum)
    }
    
    //
    
    func showInfo(site: String) -> Void {
        let alertView = UIAlertView(title: "警告", message: site, delegate: self, cancelButtonTitle: "我知道了")
        alertView.show()
    }
   

}


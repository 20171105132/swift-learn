//
//  ViewController.swift
//  swift learn
//
//  Created by zhangyue on 2018/10/11.
//  Copyright © 2018年 zhangyue. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var temp=0.0
    var sum=0.0
    var flag=0
    var sum1=0
    var i=0
    var point=1
    @IBOutlet weak var Caculator: UITextField!
    @IBAction func button1(_ sender: Any) {
        Caculator.text=Caculator.text!+"1"
    }
    @IBAction func button2(_ sender: Any) {
        Caculator.text=Caculator.text!+"2"
    }
    @IBAction func button3(_ sender: Any) {
        Caculator.text=Caculator.text!+"3"
    }
    @IBAction func button4(_ sender: Any) {
        Caculator.text=Caculator.text!+"4"
    }
    @IBAction func button5(_ sender: Any) {
        Caculator.text=Caculator.text!+"5"
    }
    @IBAction func button6(_ sender: Any) {
        Caculator.text=Caculator.text!+"6"
    }
    @IBAction func button7(_ sender: Any) {
        Caculator.text=Caculator.text!+"7"
    }
    @IBAction func button8(_ sender: Any) {
        Caculator.text=Caculator.text!+"8"
    }
    @IBAction func button9(_ sender: Any) {
        Caculator.text=Caculator.text!+"9"
    }
    @IBAction func button10(_ sender: Any) {
        Caculator.text=Caculator.text!+"."
        point=0
    }
    @IBAction func button0(_ sender: Any) {
        Caculator.text=Caculator.text!+"0"
    }
    
    @IBAction func mins_sign(_ sender: Any) {
        Caculator.text!="-"
    }
    @IBAction func add(_ sender: Any) {
        temp=Double(Caculator.text!)!
        if(i==0){
            Caculator.text=""
            sum=temp
        }
        i=i+1
        if(i==2){
            sum=sum+Double(Caculator.text!)!
            Caculator.text=""
        }
        i=1
        flag=1
    }
    @IBAction func Reduce(_ sender: Any) {
        temp=Double(Caculator.text!)!
        if(i==0){
            Caculator.text=""
            sum=temp
        }
        i=i+1
        if(i==2){
            sum=sum-Double(Caculator.text!)!
            Caculator.text=""
        }
        i=1
        flag=2
    }
    @IBAction func Take(_ sender: Any) {
        temp=Double(Caculator.text!)!
        if(i==0){
            Caculator.text=""
            sum=temp
        }
        i=i+1
        if(i==2){
            sum=sum*Double(Caculator.text!)!
            Caculator.text=""
        }
        i=1
        flag=3
    }
    @IBAction func division(_ sender: Any) {
        temp=Double(Caculator.text!)!
        if(i==0){
            Caculator.text=""
            sum=temp
        }
        i=i+1
        if(i==2){
            sum=sum/(Double(Caculator.text!)!)
            Caculator.text=""
        }
        i=1
        flag=4
        if(temp==0){
            Caculator.text="error"
        }
    }

    @IBAction func equal(_ sender: Any) {
        
        if((flag==1)&&(point==0)){
            sum=sum+Double(Caculator.text!)!
            Caculator.text!="\(sum)"
            i=0
            sum=0
        }
        if((flag==2)&&(point==0)){
            sum=sum-Double(Caculator.text!)!
            Caculator.text!="\(sum)"
            i=0
            sum=0
        }
        if((flag==3)&&(point==0)){
            sum=sum*Double(Caculator.text!)!
            Caculator.text!="\(sum)"
            i=0
            sum=0
        }
        if((flag==4)&&(point==0)){
            sum=sum/(Double(Caculator.text!)!)
            Caculator.text!="\(sum)"
            i=0
            sum=0
        }
        if((flag==1)&&(point==1)){
            sum1=Int(sum+Double(Caculator.text!)!)
            Caculator.text!="\(sum1)"
            i=0
            sum1=0
        }
        if((flag==2)&&(point==1)){
            sum1=Int(sum-Double(Caculator.text!)!)
            Caculator.text!="\(sum1)"
            i=0
            sum1=0
        }
        if((flag==3)&&(point==1)){
            sum1=Int(sum*Double(Caculator.text!)!)
            Caculator.text!="\(sum1)"
            i=0
            sum1=0
        }
        if((flag==4)&&(point==1)){
            sum1=Int(sum/Double(Caculator.text!)!)
            Caculator.text!="\(sum1)"
            i=0
            sum1=0
        }
        
    }
    @IBAction func button_clear(_ sender: Any) {
        Caculator.text=""
        sum=0
        sum1=0
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}


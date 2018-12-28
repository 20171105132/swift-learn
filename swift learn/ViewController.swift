//
//  ViewController.swift
//  swift learn
//
//  Created by zhangyue on 2018/10/11.
//  Copyright © 2018年 zhangyue. All rights reserved.
//
struct Stack<T> {
    fileprivate var array: [T] = []
    
    public var count: Int {
        return array.count
    }
    public mutating func push(_ element: T) {
        array.append(element)
    }
    public mutating func pop() -> T? {
        return array.popLast()
    }
    
    public var isEmpty: Bool {
        return array.isEmpty
    }
}

import UIKit

class ViewController: UIViewController {
    var temp:Double = 0
    var sum:Double = 0
    var flag=0
    var sum1=0
    var i=0
    var point=false  //判断小数点是否存在
    var caflag=0    //判断数前面是符号还是数字
    @IBOutlet weak var Caculator: UITextField!
    @IBOutlet weak var display: UITextField!
    @IBAction func button1(_ sender: Any) {
        if(caflag==1){
            Caculator.text=Caculator.text!+"1"
            display.text=display.text!+"1"
        }else{
            Caculator.text="1"
            display.text="1"
        }
        caflag=1
    }
    @IBAction func button2(_ sender: Any) {
        if(caflag==1){
            Caculator.text=Caculator.text!+"2"
            display.text=display.text!+"2"
        }else{
            Caculator.text="2"
            display.text="2"
        }
        caflag=1
    }
    @IBAction func button3(_ sender: Any) {
        if(caflag==1){
            Caculator.text=Caculator.text!+"3"
            display.text=display.text!+"3"
        }else{
            Caculator.text="3"
            display.text="3"
        }
        caflag=1
    }
    @IBAction func button4(_ sender: Any) {
        if(caflag==1){
            Caculator.text=Caculator.text!+"4"
            display.text=display.text!+"4"
        }else{
            Caculator.text="4"
            display.text="4"
        }
        caflag=1
    }
    @IBAction func button5(_ sender: Any) {
        if(caflag==1){
            Caculator.text=Caculator.text!+"5"
            display.text=display.text!+"5"
        }else{
            Caculator.text="5"
            display.text="5"
        }
        caflag=1
    }
    @IBAction func button6(_ sender: Any) {
        if(caflag==1){
            Caculator.text=Caculator.text!+"6"
            display.text=display.text!+"6"
        }else{
            Caculator.text="6"
            display.text="6"
        }
        caflag=1
    }
    @IBAction func button7(_ sender: Any) {
        if(caflag==1){
            Caculator.text=Caculator.text!+"7"
            display.text=display.text!+"7"
        }else{
            Caculator.text="7"
            display.text="7"
        }
        caflag=1
    }
    @IBAction func button8(_ sender: Any) {
        if(caflag==1){
            Caculator.text=Caculator.text!+"8"
            display.text=display.text!+"8"
        }else{
            Caculator.text="8"
            display.text="8"
        }
        caflag=1
    }
    @IBAction func button9(_ sender: Any) {
        if(caflag==1){
            Caculator.text=Caculator.text!+"9"
            display.text=display.text!+"9"
        }else{
            Caculator.text="9"
            display.text="9"
        }
        caflag=1
    }
    @IBAction func button10(_ sender: Any) {
        Caculator.text=Caculator.text!+"."
        display.text=display.text!+"."
        point=true
    }
    @IBAction func button0(_ sender: Any) {
        if(caflag==1){
            Caculator.text=Caculator.text!+"0"
            display.text=display.text!+"0"
        }else{
            Caculator.text="0"
            display.text="0"
        }
        caflag=1
    }
    
    @IBAction func mins_sign(_ sender: Any) {
        Caculator.text!="-"
        display.text="-"
    }
    
    @IBAction func add(_ sender: Any) {
        if(caflag==0)
        {
            Caculator.text="0"
            display.text="0"
        }
        
        temp=Double(Caculator.text!)!
        if(i==0){
            Caculator.text=""
            display.text=display.text!+"+"
            sum=temp
        }
         i=i+1
        if(i==2){
            if(flag==1)
            {
                sum=sum+temp
                Caculator.text=""
                display.text=display.text!+"+"
                
            }
            if(flag==2)
            {
                sum=sum-temp
                Caculator.text=""
                display.text=display.text!+"+"
            }
            if(flag==3)
            {
                sum=sum*temp
                Caculator.text=""
                display.text=display.text!+"+"
            }
            if(flag==4)
            {
                sum=sum/temp
                Caculator.text=""
                display.text=display.text!+"+"
            }
            Caculator.text=""
        }
        i=1
        flag=1
    }
    
    @IBAction func Reduce(_ sender: Any) {
        if(caflag==0)
        {
            Caculator.text="0"
            display.text="0"
        }
        temp=Double(Caculator.text!)!
        if(i==0){
            Caculator.text=""
            display.text=display.text!+"-"
            sum=temp
        }
        i=i+1
        if(i==2){
            if(flag==1)
            {
                sum=sum+temp
                Caculator.text=""
                display.text=display.text!+"-"
            }
            if(flag==2)
            {
                sum=sum-temp
                Caculator.text=""
                display.text=display.text!+"-"
            }
            if(flag==3)
            {
                sum=sum*temp
                Caculator.text=""
                display.text=display.text!+"-"
            }
            if(flag==4)
            {
                sum=sum/temp
                Caculator.text=""
                display.text=display.text!+"-"
            }
            Caculator.text=""
        }
        i=1
        flag=2
    }
    
    @IBAction func Take(_ sender: Any) {
        if(caflag==0)
        {
            Caculator.text="0"
            display.text="0"
        }
         temp=Double(Caculator.text!)!
        if(i==0){
            Caculator.text=""
            display.text=display.text!+"*"
            sum=temp
        }
        i=i+1
        if(i==2){
            sum=sum*temp
            Caculator.text=""
            display.text=display.text!+"*"
        }
        i=1
        flag=3
    }
    
    @IBAction func division(_ sender: Any) {
        if(caflag==0)
        {
            Caculator.text="0"
            display.text="0"
        }
        temp=Double(Caculator.text!)!
        if(i==0){
            Caculator.text=""
            display.text=display.text!+"/"
            sum=temp
        }
        i=i+1
        if(i==2){
            sum=sum/temp
            display.text=display.text!+"/"
            Caculator.text=""
        }
        i=1
        flag=4
        if(temp==0){
            Caculator.text="error"
            display.text="error"
        }
    }

    @IBAction func equal(_ sender: Any) {
        if caflag==0{
            Caculator.text="0"
        }
        if flag==1&&point==true{
            sum=sum+Double(Caculator.text!)!
            Caculator.text!="\(sum)"
            i=0
            sum=0
        }
        if  flag==2&&point==true{
            sum=sum-Double(Caculator.text!)!
            Caculator.text!="\(sum)"
            i=0
            sum=0
        }
        if  flag==3&&point==true{
            sum=sum*Double(Caculator.text!)!
            Caculator.text!="\(sum)"
            i=0
            sum=0
        }
        if  flag==4&&point==true{
            sum=sum/(Double(Caculator.text!)!)
            Caculator.text!="\(sum)"
            i=0
            sum=0
        }
        if  flag==1&&point==false{
            sum1=Int(sum+Double(Caculator.text!)!)
            Caculator.text!="\(sum1)"
            i=0
            sum1=0
        }
        if  flag==2&&point==false{
            sum1=Int(sum-Double(Caculator.text!)!)
            Caculator.text!="\(sum1)"
            i=0
            sum1=0
        }
        if  flag==3&&point==false{
            sum1=Int(sum*Double(Caculator.text!)!)
            Caculator.text!="\(sum1)"
            i=0
            sum1=0
        }
        /*if  flag==4&&point==false{
            sum1=Int(sum/Double(Caculator.text!)!)
            Caculator.text!="\(sum1)"
            i=0
            sum1=0
        }*/
         caflag=0
    }
    @IBAction func button_clear(_ sender: Any) {
        Caculator.text=""
        display.text=""
        sum=0
        sum1=0
        point=false
    }

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}


//
//  ViewController.swift
//  count
//
//  Created by 長沢　遼 on 2016/03/31.
//  Copyright © 2016年 Sgtmt. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var data: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        viewSet.backgroundColor=UIColor(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        
        data.text=String(atai);
            redLabel.text="red :0"
            blueLabel.text="blue :0"
            greenLabel.text="green :0"
            sadBtn.enabled = false
     
            }
    
    var atai=0;
    var redColor:CGFloat = 0
    var blueColor:CGFloat = 0
    var greenColor:CGFloat = 0
    var alphaColor:CGFloat = 0.5
    @IBOutlet weak var viewSet: UIView!
    @IBOutlet weak var redLabel: UILabel!
    @IBOutlet weak var greenLabel: UILabel!
    @IBOutlet weak var blueLabel: UILabel!
    @IBOutlet weak var silderRed: UISlider!
    @IBOutlet weak var silderGreen: UISlider!
    @IBOutlet weak var silderBlue: UISlider!
    @IBOutlet weak var rgbSet: UILabel!

    @IBOutlet weak var sadBtn: UIButton!
    @IBOutlet weak var rgbView: UIView!
    @IBAction func redSlider(sender: AnyObject) {
        viewBackgroundSet()
        redLabel.text="red :\(silderRed.value)"
     
    }
    func viewBackgroundSet(){
        viewSet.backgroundColor=UIColor(red: CGFloat(silderRed.value), green: CGFloat(silderGreen.value), blue: CGFloat(silderBlue.value), alpha: 1.0)
    }
    @IBAction func blueSlider(sender: AnyObject) {
        blueLabel.text="blue :\(silderBlue.value)"
        viewBackgroundSet()
    }
    @IBAction func blueLongBtn(sender: AnyObject) {
        blueColor+=0.1
        backgroundColor()
        colorScaning()
    }
    @IBAction func greenSlider(sender: AnyObject) {
        greenLabel.text="green :\(silderGreen.value)"
        viewBackgroundSet()
    }
      @IBAction func redBtn(sender: AnyObject) {
        redColor+=0.1
         backgroundColor()
        colorScaning()
       }
    
    @IBAction func redLongBtn(sender: AnyObject) {
        redColor+=0.1
        backgroundColor()
        colorScaning()
    }
    
    @IBAction func colorReset(sender: AnyObject) {
       colorDefault()
        backgroundColor()
        colorScaning()
    }
    @IBAction func greenBtn(sender: AnyObject) {
        greenColor+=0.1
        backgroundColor()
        colorScaning()

    }
    @IBAction func greenLongBtn(sender: AnyObject) {
        greenColor+=0.1
        backgroundColor()
        colorScaning()

        
    }
       @IBAction func blueBtn(sender: AnyObject) {
          blueColor+=0.1
         backgroundColor()
        colorScaning()
    }
    @IBAction func countBtn(plusBtn: AnyObject) {
        sadParam()
        addSadBtn()
        ColorBtn()
        stringData()
            }
    @IBAction func sadBtn(sender: AnyObject) {
        sadParam()
        sadPoint()
        ColorBtn()
        stringData()
    }
    func colorScaning(){
         rgbSet.text="red: \(redColor) green: \(greenColor) blue: \(blueColor)"
    }

    func backgroundColor(){
//                self.view.backgroundColor = UIColor(red: redColor, green: greenColor, blue: blueColor, alpha: alphaColor)
           rgbView.backgroundColor = UIColor(red: redColor, green: greenColor, blue: blueColor, alpha: alphaColor)
    }
    func colorDefault(){
        //default
        redColor = 0
        blueColor = 0
        greenColor = 0
    }
    
    func sadPoint(){
        //--
        if atai > 0 {
          atai -= 1;
        }else{}
        
    
       }
    func stringData(){
        //update
          data.text=String(atai);
    }
    func addSadBtn(){
        //++
        if atai>=0{
            atai+=1
        }else{}
    }

    func ColorBtn(){
        //colorSet
        if atai == 0{
            
        }else {
        if atai%10 == 0{
            data.textColor = UIColor.redColor()
            }else{
            data.textColor = UIColor.blackColor()
        }
                       }
        }
    func sadParam(){
        //sadBtnStatus
        if atai>=0{
            sadBtn.enabled = true
        }else{
            sadBtn.enabled = false
        }

    }
    
   

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


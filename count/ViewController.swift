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
        
         data.text=String(atai);
     
            }
    
    var atai=0;
    var redColor:CGFloat = 0
    var blueColor:CGFloat = 0
    var greenColor:CGFloat = 0
    var alphaColor:CGFloat = 0.5
    
  
   
   
    
       @IBOutlet weak var rgbSet: UILabel!

    @IBAction func redBtn(sender: AnyObject) {
        redColor+=0.1
         backgroundColor()
        colorScaning()
       
        
    }
    @IBAction func greenBtn(sender: AnyObject) {
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
        atai += 1;
        ColorBtn()
        
        data.text=String(atai);
            }
    func colorScaning(){
         rgbSet.text="red: \(redColor) green: \(greenColor) blue: \(blueColor)"
    }
    func backgroundColor(){
                self.view.backgroundColor = UIColor(red: redColor, green: greenColor, blue: blueColor, alpha: alphaColor)
    }
    
    func sadPoint(){
//        atai-1;
//        if atai <= 0{
//        
//        }
       
        
        }
    func ColorBtn(){


        if atai%10 == 0{
            data.textColor = UIColor.redColor()
            }else{
            data.textColor = UIColor.blackColor()

        }
            }
    
   

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


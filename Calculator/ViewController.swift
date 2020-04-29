//
//  ViewController.swift
//  Calculator
//
import UIKit

class ViewController: UIViewController {
   
    @IBOutlet weak var resultlabel: UILabel!
    var NumberScreen = 0.0 ;
    var previousnumber = 0.0;
    var operation = 0 ;
    var isoperator = false
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        set_radius()
        resultlabel.text  = ""
    }
    
    @IBAction func NumberPressed(_ sender: Any) {
        let tag = (sender as! UIButton).tag
        
        if (isoperator == true){
            isoperator = false
            resultlabel.text = String(tag - 1)
            NumberScreen = Double(resultlabel.text!)!
        }
        else if (tag==20){
            resultlabel.text = resultlabel.text! + String(".")
            NumberScreen = Double(resultlabel.text!)!
            
        }
            
        else
        {
            resultlabel.text = resultlabel.text! + String(tag - 1)
            NumberScreen = Double(resultlabel.text!)!
        }
        
        
    }
    
    @IBAction func Operation(_ sender: Any) {
        let tag2 = (sender as! UIButton).tag
        
        if (tag2 == 12) {
            
            isoperator = true
            resultlabel.text = ""
            previousnumber = 0
            NumberScreen = 0
            operation = 0
        }
        if (tag2 == 13 )
               {
                   isoperator = true
                   previousnumber = Double(resultlabel.text!)!
                   resultlabel.text = "+/-"
                   operation = tag2
               }
        
        if (tag2 == 14 )
        {
            isoperator = true
            previousnumber = Double(resultlabel.text!)!
            resultlabel.text = "%"
            operation = tag2
        }
        
        else if (tag2 == 15 )  // Divide
        {
            isoperator = true
            previousnumber = Double(resultlabel.text!)!
            resultlabel.text = "/"
            operation = tag2
            
        }
        else if (tag2 == 16 )  // Multiply
        {
            isoperator = true
            previousnumber = Double(resultlabel.text!)!
            resultlabel.text = "x"
            operation = tag2
          
        }
        else if (tag2 == 17 ) //Subtract
        {
            isoperator = true
            previousnumber = Double(resultlabel.text!)!
            resultlabel.text = "-"
            operation = tag2
        }
        else if (tag2 == 18 )  // Add
        {
            isoperator = true
            previousnumber = Double(resultlabel.text!)!
            resultlabel.text = "+"
            operation = tag2
           
        }
        else if (tag2 == 19 ) // Equal
        {
            
            if (operation == 14){
                resultlabel.text = String((previousnumber/100)*NumberScreen)
            }
            else if (operation == 13){
                resultlabel.text = String(previousnumber-NumberScreen)
            }
            else if (operation == 15){
                resultlabel.text = String(previousnumber/NumberScreen)
            }
            else if (operation == 16){
                resultlabel.text = String(previousnumber*NumberScreen)
            }
            else if (operation == 17){
                resultlabel.text = String(previousnumber-NumberScreen)
            }
            else if (operation == 18){
                resultlabel.text = String(previousnumber+NumberScreen)
            }
        }
        
    }

   
    //////////////////////////////////////////////////////////////////
    
    @IBOutlet weak var B1: UIButton!
    @IBOutlet weak var B2: UIButton!
    @IBOutlet weak var B3: UIButton!
    @IBOutlet weak var B4: UIButton!
    @IBOutlet weak var B5: UIButton!
    @IBOutlet weak var B6: UIButton!
    @IBOutlet weak var B7: UIButton!
    @IBOutlet weak var B8: UIButton!
    @IBOutlet weak var B9: UIButton!
    
    //////////////////////////////////////////////////////////////////
    
    @IBOutlet weak var A7: UIButton!
    @IBOutlet weak var A8: UIButton!
    @IBOutlet weak var A9: UIButton!
    @IBOutlet weak var A4: UIButton!
    @IBOutlet weak var A5: UIButton!
    @IBOutlet weak var A6: UIButton!
    @IBOutlet weak var A1: UIButton!
    @IBOutlet weak var A2: UIButton!
    @IBOutlet weak var A3: UIButton!
    @IBOutlet weak var A0: UIButton!
    @IBOutlet weak var Adot: UIButton!
    
    private func set_radius()
    {
        
        A1.layer.cornerRadius = 20.0
        A2.layer.cornerRadius = 20.0
        A3.layer.cornerRadius = 20.0
        A4.layer.cornerRadius = 20.0
        A5.layer.cornerRadius = 20.0
        A6.layer.cornerRadius = 20.0
        A7.layer.cornerRadius = 20.0
        A8.layer.cornerRadius = 20.0
        A9.layer.cornerRadius = 20.0
        A0.layer.cornerRadius = 20.0
        Adot.layer.cornerRadius = 20.0
        B1.layer.cornerRadius = 20.0
        B2.layer.cornerRadius = 20.0
        B3.layer.cornerRadius = 20.0
        B4.layer.cornerRadius = 20.0
        B5.layer.cornerRadius = 20.0
        B6.layer.cornerRadius = 20.0
        B7.layer.cornerRadius = 20.0
        B8.layer.cornerRadius = 20.0
        B9.layer.cornerRadius = 20.0
    }


}


//
//  ViewController.swift
//  Window Shopper
//
//  Created by Sadman Sakib Saumik on 11/16/17.
//  Copyright © 2017 Sadman Sakib Saumik. All rights reserved.
//

import UIKit

class MainVC: UIViewController {
    @IBOutlet weak var wageTxt: CustomTextField!
    @IBOutlet weak var priceTxt: CustomTextField!
    @IBOutlet weak var result: UILabel!
    @IBOutlet weak var hoursLbl: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        result.isHidden = true
        hoursLbl.isHidden = true
        
        let calcBtn = UIButton()
        calcBtn.frame = CGRect(x: 0, y: 0, width: view.frame.size.width, height: 60)
        calcBtn.backgroundColor = #colorLiteral(red: 0.9155091643, green: 0.6786740422, blue: 0.05688857287, alpha: 1)
        calcBtn.setTitle("Calculate", for: .normal)
        calcBtn.setTitleColor(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), for: .normal)
        calcBtn.addTarget(self, action: #selector(claculation), for: .touchUpInside)
        wageTxt.inputAccessoryView = calcBtn
        priceTxt.inputAccessoryView = calcBtn
    }
    @objc func claculation(){
        let wageObj = Wage()
        if let wageTxt = wageTxt.text, let priceTxt = priceTxt.text{
            view.endEditing(true)
            if let wage = Double(wageTxt), let price = Double(priceTxt){
                let res = wageObj.getHours(forWage: wage, andPrice: price)
                if res == -1 {
                    result.text = "Need Cash!"
                    result.isHidden = false
                }
                else if res == 0 {
                    result.text = "It's Free!"
                    result.isHidden = false
                }
                else {
                    result.text = String(res)
                    result.isHidden = false
                    hoursLbl.isHidden = false
                }
                
            }
        }
        
    }
    @IBAction func clearCalculatorBtn(_ sender: Any) {
        result.isHidden = true
        hoursLbl.isHidden = true
        wageTxt.text=""
        priceTxt.text=""
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


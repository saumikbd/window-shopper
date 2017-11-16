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
    
    override func viewDidLoad() {
        super.viewDidLoad()
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
        print("claculation tapped")
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


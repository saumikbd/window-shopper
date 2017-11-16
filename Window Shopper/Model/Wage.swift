//
//  Wage.swift
//  Window Shopper
//
//  Created by Sadman Sakib Saumik on 11/17/17.
//  Copyright © 2017 Sadman Sakib Saumik. All rights reserved.
//

import Foundation

class Wage{
    func getHours(forWage wage: Double, andPrice price:Double)->Int {
        if wage != 0 {
            return Int(ceil(price/wage))
        }
        else if wage == 0 && price == 0{
            return 0
        }
        else{
            return -1;
        }
    }
}

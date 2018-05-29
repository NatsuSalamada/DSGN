//
//  SegmentModel.swift
//  DSGN
//
//  Created by 5k on 5/29/18.
//  Copyright © 2018 NatsuSalamada. All rights reserved.
//

import UIKit

class SegmentModel: UISegmentedControl {

    func initUI(){
        removeBorders()
    }
    
    func removeBorders(){
        self.tintColor = UIColor.clear
        
    }

}

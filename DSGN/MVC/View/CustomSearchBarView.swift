//
//  CustomSearchBarView.swift
//  DSGN
//
//  Created by Bé Nhện Của Bé Thảo on 28/05/2018.
//  Copyright © 2018 NatsuSalamada. All rights reserved.
//

import UIKit

class CustomSearchBarView: UISearchBar {

    
    override func draw(_ rect: CGRect) {
        self.configureSearchBarTextField()
    }
    func configureSearchBarTextField() {
        self.backgroundColor = UIColor.clear
        self.backgroundImage = UIImage.init()
        self.isTranslucent = true
        let tfInSearchBar = self.value(forKey: "_searchField") as! UITextField
        tfInSearchBar.backgroundColor = UIColor(red:142/255, green:142/255, blue:142/255, alpha:0.12)
        tfInSearchBar.textColor = UIColor(red:12/255, green:13/255, blue:4/255, alpha:1)
        tfInSearchBar.layer.cornerRadius = 6
        tfInSearchBar.placeholder = "Search"
        tfInSearchBar.frame = self.bounds
    }
}

//
//  CountriesModuleInterface.swift
//  VIPER Demo
//
//  Created by Nagaraju on 10/21/16.
//  Copyright © 2016 Nagaraju. All rights reserved.
//

import UIKit

protocol CountriesModuleInterface: class {
    
    ///Refresh
    func reloadView()
    
    ///Navigations
    func showCollegesInCountry(country: String)
    
}

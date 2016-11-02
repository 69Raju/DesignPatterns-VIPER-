//
//  CountriesViewInterface.swift
//  VIPER Demo
//
//  Created by Nagaraju on 10/21/16.
//  Copyright © 2016 Nagaraju. All rights reserved.
//

import UIKit

protocol CountriesViewInterface: class {
    
    ///View related methods
    func showCountries(countries: NSArray)
    func showNoCountriesFound()

}

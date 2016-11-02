//
//  CollegesModuleInterface.swift
//  VIPER Demo
//
//  Created by Nagaraju on 10/21/16.
//  Copyright © 2016 Nagaraju. All rights reserved.
//

import UIKit

protocol CollegesModuleInterface: class {

    func reloadView()
    func showCollegeDetails(withCollegeWebsiteURL url: URL) 
}

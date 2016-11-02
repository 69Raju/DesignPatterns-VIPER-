//
//  CountriesWireframe.swift
//  VIPER Demo
//
//  Created by Nagaraju on 10/21/16.
//  Copyright © 2016 Nagaraju. All rights reserved.
//

import UIKit

class CountriesWireframe: NSObject {
    
    ///Presenter
    var countriesPresenter: CountriesPresenter!
    
    ///ViewController
    var countriesViewController: CountriesViewController!
    
    ///Rootwireframe, since this is first view controller's wireframe
    var rootWireframe: RootWireframe!
    
    ///Next wireframe
    var collegesWireframe: CollegesWireframe!
    
    
    func addListInterfaceInWindow(window: UIWindow) {
        let storyboard = UIStoryboard(name:"Countries", bundle:Bundle.main)
        countriesViewController = storyboard.instantiateViewController(withIdentifier: "CountriesViewController") as! CountriesViewController
        countriesViewController.countriesPresenter = countriesPresenter
        self.countriesPresenter.countriesView = countriesViewController
        self.rootWireframe?.showRootViewController(viewController: countriesViewController, inWindow: window)
    }
    
    
    func showCollegesInCountry(country: String) {
        if self.collegesWireframe != nil {
            self.collegesWireframe.collegesPresenter.country = country
            self.collegesWireframe.pushCollegesView(fromViewController: countriesViewController)
        }
    }

}

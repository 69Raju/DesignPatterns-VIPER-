//
//  AppDependencies.swift
//  VIPER Demo
//
//  Created by Nagaraju on 10/21/16.
//  Copyright © 2016 Nagaraju. All rights reserved.
//

//MARK: This class will have all the app configurations and connections.

import UIKit

class AppDependencies: NSObject {
    
    var countriesWireframe: CountriesWireframe!
    
    override init() {
        super.init()
        self.configureDependencies()
    }
    
    
    func installRootViewControllerInWindow(window: UIWindow) {
        self.countriesWireframe.addListInterfaceInWindow(window: window)
    }
    
    
    func configureDependencies() {
        
        ///Countries
        /*
         * 1. Create interactor, presenter, wireframe, datamanager (if required) and assign
         * properties appropriately.
         *
         * 2. Since this is first view controller, it must have property for rootWireframe as well.
         *
         * 3. It must also have next controllers wire frame object for communicating.
         *
         */
    
        let rootWireframe = RootWireframe()
        let countriesPresenter = CountriesPresenter()
        let countriesWireframe = CountriesWireframe()
        let countriesInteractor = CountriesInteractor()
        countriesWireframe.rootWireframe = rootWireframe
        countriesPresenter.countriesWireframe = countriesWireframe
        countriesPresenter.countriesInteractor = countriesInteractor
        countriesInteractor.countriesPresenter = countriesPresenter
        countriesWireframe.countriesPresenter = countriesPresenter
        
        self.countriesWireframe = countriesWireframe
        
        
        ///Colleges
        /*
         * 1. Create interactor, presenter, wireframe, datamanager (if required) and assign
         * properties appropriately.
         *
         * 2. It must have next controllers wire frame object for communicating. Notice here it doesn't require rootWireframe object.
         *
         */
        let collegesPresenter = CollegesPresenter()
        let collegesInteractor = CollegesInteractor()
        let collegesWireframe = CollegesWireframe()
        
        collegesPresenter.collegesInteractor = collegesInteractor
        collegesPresenter.collegesWireframe = collegesWireframe
        collegesInteractor.collegesPresenter = collegesPresenter
        collegesWireframe.collegesPresenter = collegesPresenter
        
        ///Link collegesWireframe to countriesWireframe
        countriesWireframe.collegesWireframe = collegesWireframe
        
        ///College Details
        /*
         * 1. Create interactor, presenter, wireframe, datamanager (if required) and assign
         * properties appropriately.
         *
         * 2. It must have next controllers wire frame object for communicating. Notice here it doesn't require rootWireframe object.
         *
         */
        
        let collegeDetailsPresenter = CollegeDetailsPresenter()
        let collegeDetailsInteractor = CollegeDetailsInteractor()
        let collegeDetailsWireframe = CollegeDetailsWireframe()
        
        collegeDetailsPresenter.collegeDetailsInteractor = collegeDetailsInteractor
        collegeDetailsPresenter.collegeDetailsWireframe = collegeDetailsWireframe
        collegeDetailsInteractor.collegeDetailsPresenter = collegeDetailsPresenter
        collegeDetailsWireframe.collegeDetailsPresenter = collegeDetailsPresenter
        
        ///Link collegesWireframe to collegeDetailsWireframe
        collegesWireframe.collegeDetailsWireframe = collegeDetailsWireframe
    }
    
    
}

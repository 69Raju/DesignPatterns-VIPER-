//
//  CollegesPresenter.swift
//  VIPER Demo
//
//  Created by Nagaraju on 10/21/16.
//  Copyright © 2016 Nagaraju. All rights reserved.
//

import UIKit

class CollegesPresenter: CollegesModuleInterface, CollegesInteractorOutput { //Adopts CollegeInteractorOutput, CollegeModuleInterface
    
    ///Params
    var country: String!
    
    ///Interactor
    var collegesInteractor: CollegesInteractorInput!
    
    ///ViewController - weak
    weak var collegesView: CollegesViewInterface!
    
    ///Wireframe
    var collegesWireframe: CollegesWireframe!
    
    //MARK: - CollegeModuleInterface protocol methods
    
    func reloadView() {
        
    }
    
    
    func fetchColleges() {
        self.collegesInteractor.fetchColleges(inCountry: country)
    }
    
    
    func showCollegeDetails(withCollegeWebsiteURL url: URL) {
        self.collegesWireframe.showCollegeDetails(withCollegeWebsiteURL: url)
    }
    
    
    //MARK: CollegesInteractorOutput protocol methods
    
    func foundCollegesInCountry(countries: NSArray) {
        if countries.count == 0 {
            self.collegesView.showNoCollegesFound()
        } else {
            self.collegesView.showColleges(colleges: countries)
        }
    }
}

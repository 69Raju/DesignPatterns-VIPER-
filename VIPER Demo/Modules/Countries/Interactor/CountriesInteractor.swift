//
//  CountriesInteractor.swift
//  VIPER Demo
//
//  Created by Nagaraju on 10/21/16.
//  Copyright © 2016 Nagaraju. All rights reserved.
//

import UIKit

class CountriesInteractor: CountriesInteractorInput {
    
    //Presenter
    weak var countriesPresenter: CountriesPresenter!
    
    //Data manager if any
    
    //Entities if any
    
    //MARK: CountriesInteractorInput protocol methods
    
    func fetchCountryList() {
        ///This will do the real business to fetch the countries if its from cloud/local db.
        
        self.countriesPresenter.foundCountryList(countries: ["India", "Australia", "Sweden", "Singapore", "USA"])
    }
    
}

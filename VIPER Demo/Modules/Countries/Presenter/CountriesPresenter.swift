//
//  CountriesPresenter.swift
//  VIPER Demo
//
//  Created by Nagaraju on 10/21/16.
//  Copyright © 2016 Nagaraju. All rights reserved.
//

import UIKit


class CountriesPresenter: CountriesModuleInterface, CountriesInteractorOutput { ///adopts CountriesModuleInterface, CountriesInteractorOutput
    
    ///Interactor
    var countriesInteractor: CountriesInteractorInput!
    
    ///Wireframe
    var countriesWireframe: CountriesWireframe!
    
    ///ViewController weak
    weak var countriesView: CountriesViewInterface!
    
    
    ///MARK: - CountriesInteractorOutput protocol methods
    
    func foundCountryList(countries: NSArray) {
        if countries.count == 0 {
            self.countriesView.showNoCountriesFound()
        } else {
            self.countriesView.showCountries(countries: countries)
        }
    }
    
    
    ///MARK: - CountriesModuleInterface protocol methods
    func reloadView() {
        self.countriesInteractor.fetchCountryList()
    }
    
    
    func showCollegesInCountry(country: String) {
        self.countriesWireframe.showCollegesInCountry(country: country)
    }

}

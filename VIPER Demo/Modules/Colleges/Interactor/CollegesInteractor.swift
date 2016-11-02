//
//  CollegesInteractor.swift
//  VIPER Demo
//
//  Created by Nagaraju on 10/21/16.
//  Copyright © 2016 Nagaraju. All rights reserved.
//

import UIKit
import Alamofire

class CollegesInteractor: CollegesInteractorInput { ///Adopts CollegeInteractorInput
    ///Presenter
    weak var collegesPresenter: CollegesPresenter!
    
    ///Datamanager if any
        
    //MARK: - CollegesInteractorInput protocol methods
    
    func fetchColleges(inCountry country: String) {
        
        ///Use alamofire for fetching colleges in country.
        let urlString: String = "http://universities.hipolabs.com/search?country=\(country)"
        Alamofire.request(urlString).responseJSON { (response) in
            print(response.result.value)
            let countries = response.result.value as! NSArray
            self.collegesPresenter.foundCollegesInCountry(countries: countries)
        }
    }
    
}

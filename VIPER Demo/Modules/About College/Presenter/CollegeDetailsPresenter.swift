//
//  CollegeDetailsPresenter.swift
//  VIPER Demo
//
//  Created by Nagaraju on 10/21/16.
//  Copyright © 2016 Nagaraju. All rights reserved.
//

import UIKit

///adotps CollegeDetailsModuleInterface, CollegeDetailsInteractorOutput
class CollegeDetailsPresenter: CollegeDetailsInteractorOutput, CollegeDetailsModuleInterface {
    ///Interactor
    var collegeDetailsInteractor: CollegeDetailsInteractorInput!
    
    ///ViewController - weak
    weak var collegeDetailsView: CollegeDetailsViewInterface!
    
    ///Wireframe
    var collegeDetailsWireframe: CollegeDetailsWireframe!
    
    ///Data
    var collegeWebsiteURL: URL!
    
    
    //MARK: CollegeDetailsModuelInterface protocol methods
    
    func reloadView() {
        self.collegeDetailsView.showCollegeDetails(url: self.collegeWebsiteURL)
    }
}

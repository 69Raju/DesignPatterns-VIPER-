//
//  CollegeDetailsWireframe.swift
//  VIPER Demo
//
//  Created by Nagaraju on 10/21/16.
//  Copyright © 2016 Nagaraju. All rights reserved.
//

import UIKit

class CollegeDetailsWireframe: NSObject {
    ///Presenter
    //weak var collegeDetailsPresenter: CollegeDetailsPresenter!
    var collegeDetailsPresenter: CollegeDetailsPresenter!
    
    ///ViewController - weak
    weak var collegeDetailsViewController: CollegeDetailsViewController!
    
    ///Next wireframe, if exist
    var nextWireframe: NSObject! = nil
    
    
    func pushCollegeDetails(fromViewController viewController: UIViewController) {
        let storyboard = UIStoryboard(name:"CollegeDetails", bundle:Bundle.main)
        self.collegeDetailsViewController = storyboard.instantiateViewController(withIdentifier: "CollegeDetailsViewController") as! CollegeDetailsViewController
        self.collegeDetailsViewController.collegeDetailsPresenter = self.collegeDetailsPresenter
        self.collegeDetailsPresenter.collegeDetailsView = self.collegeDetailsViewController
        viewController.navigationController?.pushViewController(self.collegeDetailsViewController, animated: true)
    }
}

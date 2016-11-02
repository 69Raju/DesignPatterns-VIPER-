//
//  CollegesWireframe.swift
//  VIPER Demo
//
//  Created by Nagaraju on 10/21/16.
//  Copyright © 2016 Nagaraju. All rights reserved.
//

import UIKit

class CollegesWireframe: NSObject {
    
    //ViewController
    var collegesViewController: CollegesViewController!
    
    ///Presenter
    //weak var collegesPresenter: CollegesPresenter! ///Visit again, this caused crash
    var collegesPresenter: CollegesPresenter!
    
    ///Next wireframe
    var collegeDetailsWireframe: CollegeDetailsWireframe!
    
    
    func pushCollegesView(fromViewController viewController:UIViewController) {
        let storyboard = UIStoryboard(name:"Colleges", bundle:Bundle.main)
        self.collegesViewController = storyboard.instantiateViewController(withIdentifier: "CollegesViewController") as! CollegesViewController
        self.collegesViewController.collegesPresenter = self.collegesPresenter
        self.collegesPresenter.collegesView = self.collegesViewController
        viewController.navigationController?.pushViewController(self.collegesViewController, animated: true)
    }
    
    
    func showCollegeDetails(withCollegeWebsiteURL url: URL) {
        if self.collegeDetailsWireframe != nil {
            self.collegeDetailsWireframe.collegeDetailsPresenter.collegeWebsiteURL = url
            self.collegeDetailsWireframe.pushCollegeDetails(fromViewController: self.collegesViewController)
        }
    }

}

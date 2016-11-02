//
//  CollegeDetailsViewController.swift
//  VIPER Demo
//
//  Created by Nagaraju on 10/21/16.
//  Copyright © 2016 Nagaraju. All rights reserved.
//

import UIKit

class CollegeDetailsViewController: UIViewController, CollegeDetailsViewInterface { ///Adopts CollegeDetailsViewInterface
    
    ///Presenter
    var collegeDetailsPresenter: CollegeDetailsPresenter!
    
    ///UI
    @IBOutlet weak var webView: UIWebView!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    
    
    //MARK: - CollegeDetailsViewInterface protocol methods
    
    func showError(error: NSError) {
        
    }
    
    
    func showCollegeDetails() {
        
    }

}

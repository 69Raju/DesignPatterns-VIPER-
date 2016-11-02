//
//  CollegesViewController.swift
//  VIPER Demo
//
//  Created by Nagaraju on 10/21/16.
//  Copyright © 2016 Nagaraju. All rights reserved.
//

import UIKit

class CollegesViewController: UIViewController, CollegesViewInterface { ///Adopts CollegeViewInterface
        
    ///Presenter
    var collegesPresenter: CollegesPresenter!
    
    //UI
    @IBOutlet weak var collegesTableView: UITableView!
    @IBOutlet weak var errorView: UIView!
    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    
    
    ///Data source
    var colleges: NSArray!
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.colleges = []
        
        self.collegesTableView.contentInset = UIEdgeInsetsMake(-44, 0, 0, 0)
        self.setActivityIndicatorVisible(isVisible: true)
        self.setTableViewVisibile(isVisible: false)
        self.activityIndicator?.startAnimating()
        self.collegesPresenter.fetchColleges()
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    
    
    // MARK: - CollegesViewInterface protocol methods
    
    
    func showNoCollegesFound() {
        self.setTableViewVisibile(isVisible: false)
        self.setActivityIndicatorVisible(isVisible: false)
        self.setErrorViewVisible(isVisible: true)
    }
    
    
    func showColleges(colleges: NSArray) {
        self.colleges = colleges
        self.setActivityIndicatorVisible(isVisible: false)
        self.reloadView()
    }

    
    private func setErrorViewVisible(isVisible visible: Bool) {
        self.errorView.isHidden = !visible
    }
    
    private func setTableViewVisibile(isVisible visible: Bool) {
        self.collegesTableView.isHidden = !visible
    }
    
    
    private func setActivityIndicatorVisible(isVisible visible: Bool) {
        if visible == true {
            self.view.bringSubview(toFront: self.activityIndicator)
        } else {
            self.view.sendSubview(toBack: self.activityIndicator)
        }
        self.collegesTableView.isHidden = visible
        self.activityIndicator.isHidden = !visible
    }
    
    
    private func reloadView() {
        self.setTableViewVisibile(isVisible: true)
        self.setErrorViewVisible(isVisible: false)
        self.collegesTableView.reloadData()
    }
    
}


extension CollegesViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let college = self.colleges[indexPath.row] as! NSDictionary
        let webPage = college.object(forKey: "web_page") as! String
        let url = URL(string: webPage)
        self.collegesPresenter.showCollegeDetails(withCollegeWebsiteURL:url!)
    }
    
}


extension CollegesViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .default, reuseIdentifier: "College")
        let college = self.colleges[indexPath.row] as! NSDictionary
        print(college)
        cell.textLabel?.text = college.object(forKey: "name") as? String
        return cell
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.colleges.count
    }
    
}

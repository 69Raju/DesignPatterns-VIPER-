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
    
    
    ///Data source
    var colleges: NSArray!
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.colleges = []
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.collegesPresenter.fetchColleges()
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
    }
    
    
    func showColleges(colleges: NSArray) {
        self.colleges = colleges
        self.setTableViewVisibile(isVisible: true)
        self.reloadView()
    }

    
    private func setTableViewVisibile(isVisible visible: Bool) {
        self.collegesTableView.isHidden = !visible
        self.errorView.isHidden = visible
    }
    
    
    private func reloadView() {
        self.collegesTableView.reloadData()
    }
    
}


extension CollegesViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //let college = self.colleges[indexPath.row] as! String
        let url = URL(string: "www.google.com")
        self.collegesPresenter.showCollegeDetails(withCollegeWebsiteURL:url!)
    }
    
}


extension CollegesViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .default, reuseIdentifier: "College")
        let college = self.colleges[indexPath.row] as! String
        cell.textLabel?.text = college
        return cell
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.colleges.count
    }
    
}

//
//  CountriesViewController.swift
//  VIPER Demo
//
//  Created by Nagaraju on 10/21/16.
//  Copyright © 2016 Nagaraju. All rights reserved.
//

import UIKit

class CountriesViewController: UIViewController, CountriesViewInterface { //Adopts CountriesViewInterface
    
    ///Presenter
    var countriesPresenter: CountriesPresenter!
    
    ///Datasource
    var countries: NSArray!
    
    ///UI
    @IBOutlet weak var errorView: UIView!
    @IBOutlet weak var countriesTableView: UITableView!

    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        self.countries = []
        self.countriesPresenter.reloadView()
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
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
    
    
    // MARK: - CountriesViewInterfrace protocol methods
    
    
    func showNoCountriesFound() {
        self.setTableViewVisibile(visible: false)
    }
    
    
    func showCountries(countries: NSArray) {
        self.setTableViewVisibile(visible: true)
        self.countries = countries
        self.reloadView()
    }
    
    
    private func reloadView() {
        self.countriesTableView?.reloadData()
    }
    
    
    private func setTableViewVisibile(visible: Bool) {
        self.errorView.isHidden = visible
        self.countriesTableView.isHidden = !visible
    }

}

// MARK: - UITableViewDataSource protocol methods

extension CountriesViewController: UITableViewDataSource {
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let country: String = self.countries.object(at: indexPath.row) as! String
        let cell = UITableViewCell(style: .default, reuseIdentifier: "Country")
        cell.textLabel?.text = country
        return cell
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.countries.count
    }
    
}


// MARK: - UITableViewDelegate protocol methods

extension CountriesViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let country: String = self.countries.object(at: indexPath.row) as! String
        self.countriesPresenter.showCollegesInCountry(country: country)
    }
    
}


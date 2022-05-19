//
//  ViewController.swift
//  BikeRental
//
//  Created by Vishwas Anandani on 28/03/22.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var bikeInfoArray: [Stations] = []
    let tableview = UITableView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        performGetRequest()
        view.addSubview(tableview)
        tableview.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        tableview.delegate = self
        tableview.dataSource = self
        }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        tableview.frame = view.bounds
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.bikeInfoArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableview.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = self.bikeInfoArray[indexPath.row].station_id
        return cell
    }
    
    func performGetRequest(){
        let input_url = "https://gbfs.citibikenyc.com/gbfs/en/station_information.json"
        let apiservice = APIService()
        apiservice.get_response(fromURLString:input_url){ (result) in
        switch result {
        case .success(let data):
            self.bikeInfoArray = data.data.stations
            //print(self.bikeInfoArray)
            DispatchQueue.main.async {
                self.tableview.reloadData()
            }
        case .failure(let error):
            print(error)
        }}
    }
    
        
    }


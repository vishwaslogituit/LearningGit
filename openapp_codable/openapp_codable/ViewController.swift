//
//  ViewController.swift
//  openapp_codable
//
//  Created by Vishwas Anandani on 24/03/22.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var routeInfoArray: [RouteInfo] = []
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
        return self.routeInfoArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableview.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = self.routeInfoArray[indexPath.row].source
        return cell
    }
    
    func performGetRequest(){
        let input_url = "https://open-app1.herokuapp.com/data"
        let apiservice = APIService()
        apiservice.get_response(fromURLString:input_url){ (result) in
        switch result {
        case .success(let data):
            self.routeInfoArray = data.routeInfo
            print(self.routeInfoArray)
            DispatchQueue.main.async {
                self.tableview.reloadData()
            }
        case .failure(let error):
            print(error)
        }}
    }
    
        
    }




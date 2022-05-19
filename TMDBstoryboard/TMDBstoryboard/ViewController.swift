//
//  ViewController.swift
//  openapp_codable
//
//  Created by Vishwas Anandani on 24/03/22.
//

import UIKit
var movieInfoArray: [Results] = []
class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource,UICollectionViewDelegateFlowLayout {
    
    let tableview = UITableView()
    let Label = UILabel()
    let collectionview = UICollectionView(
        frame: .zero,
        collectionViewLayout: UICollectionViewFlowLayout()
    )
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        performGetRequest()
        collectionview.register(Moviecell.self,forCellWithReuseIdentifier: Moviecell.identifier)
        collectionview.delegate = self
        collectionview.dataSource = self
        view.addSubview(collectionview)
        
        }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        collectionview.frame = view.bounds
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return movieInfoArray.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionview.dequeueReusableCell(withReuseIdentifier: Moviecell.identifier, for: indexPath)
        Label.text = movieInfoArray[indexPath.row].title
        cell.contentView.addSubview(Label)
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView,layout collectionViewLayout: UICollectionViewDelegateFlowLayout,sizeForItemAt indexPath: IndexPath) -> CGSize{
        return CGSize(width: (view.frame.size.width/3)-3, height: (view.frame.size.width/3)-3)
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movieInfoArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableview.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = movieInfoArray[indexPath.row].title
        return cell
    }
    
    func performGetRequest(){
        let input_url = "https://api.themoviedb.org/3/movie/popular?api_key=1a5ac0e3d3792ed0a5f3b9293f104204&language=en-US&page=1"
        let apiservice = APIService()
        apiservice.get_response(fromURLString:input_url){ (result) in
        switch result {
        case .success(let data):
            movieInfoArray = data.results
            print(movieInfoArray)
            DispatchQueue.main.async {
                self.tableview.reloadData()
            }
        case .failure(let error):
            print(error)
        }}
    }
    
        
    }




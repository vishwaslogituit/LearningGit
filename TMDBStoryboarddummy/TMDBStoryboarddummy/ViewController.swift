//
//  ViewController.swift
//  TMDBStoryboarddummy
//
//  Created by Vishwas Anandani on 12/04/22.
//

import UIKit

class ViewController: UIViewController , UICollectionViewDelegate, UICollectionViewDataSource{
    var movieInfoArray: [Results] = []
    //let Label = UILabel()
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return movieInfoArray.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath)
         as! MyCollectionCell
        //self.load_image(image_url_string: movieInfoArray[indexPath.row].backdrop_path!, view: cell.myMovieImage)
        self.load_image(image_url_string: "https://www.kaleidosblog.com/tutorial/kaleidosblog.png", view: cell.myMovieImage)
        cell.myMovieImage.layer.cornerRadius = 50
        cell.MovieName.text = movieInfoArray[indexPath.row].title
        //cell.addSubview(Label)
        return cell
        
    }
    

    var movieImages:[String] = ["car","avengers","endgame","ironman","thor","antman"]
    override func viewDidLoad() {
        super.viewDidLoad()
        performGetRequest()
        // Do any additional setup after loading the view.
    }
    
    func performGetRequest(){
        let input_url = "https://api.themoviedb.org/3/movie/popular?api_key=1a5ac0e3d3792ed0a5f3b9293f104204&language=en-US&page=1"
        let apiservice = APIService()
        apiservice.get_response(fromURLString:input_url){ (result) in
        switch result {
        case .success(let data):
            self.movieInfoArray = data.results
            print(self.movieInfoArray)
            //DispatchQueue.main.async {
            //    self.tableview.reloadData()
            //}
        case .failure(let error):
            print(error)
        }}
    }
    
    
    func load_image(image_url_string:String, view:UIImageView)
    {
            
            var image_url: NSURL = NSURL(string: image_url_string)!
        let image_from_url_request: NSURLRequest = NSURLRequest(url: image_url as URL)
            
            NSURLConnection.sendAsynchronousRequest(
                image_from_url_request as URLRequest, queue: OperationQueue.main,
                completionHandler: {(response: URLResponse!,
                                    data: Data!,
                                    error: Error!) -> Void in
                    
                    if error == nil && data != nil {
                        view.image = UIImage(data: data)
                    }
                    
            })
            
    }


}


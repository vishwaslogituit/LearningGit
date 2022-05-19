//
//  movieimage.swift
//  TMDBstoryboard
//
//  Created by Vishwas Anandani on 11/04/22.
//

import UIKit

class Moviecell:UICollectionViewCell{
    static let identifier = "MovieName"
    var imageurl = ""
    var imageData = Data()
    private let imageView: UIImageView={
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        return imageView
        
    }()
    
    func image_processing(urlstring:String){
        let imageURL = URL(string:urlstring)
        do{
            self.imageData = try Data(contentsOf:imageURL!)}
        catch{print("error")}
    }
    
    override init(frame:CGRect){
        super.init(frame:frame)
        contentView.addSubview(imageView)
        
        
        self.image_processing(urlstring:"https://i.stack.imgur.com/9z6nS.png")
        //let images = [
        //UIImage(data: imageData)
        //].compactMap({$0})
        imageView.image = UIImage(named: "try")
        //let images = [
        //UIImage(named: "try")
        //].compactMap({$0})
    }
    
    required init?(coder:NSCoder){
        fatalError()
    }
    override func layoutSubviews() {
        super.layoutSubviews()
        imageView.frame = contentView.bounds
    }
    override func prepareForReuse() {
        super.prepareForReuse()
        imageView.image = nil
    }
    func seturl(url:String)
    {
        self.imageurl = url
    }
}

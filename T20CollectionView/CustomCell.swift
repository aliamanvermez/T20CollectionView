//
//  CustomCell.swift
//  T20CollectionView
//
//  Created by NeonApps on 15.09.2022.
//
import UIKit
class CustomCell : UICollectionViewCell {
    
    var data : CustomData?  {
        didSet {
            guard let data = data else {return}
            bg.image = data.image
            label.text = data.title
            directorLabel.text = "Director: \(data.director)"
            yearLabel.text = "Year: \(data.year)"
        }
    }
    
    let bg : UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    let label : UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        
        return label
        
    }()
    
    let directorLabel : UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        return label
        
    }()
    
    let yearLabel : UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        return label
        
    }()
    
  
    
   
    override init(frame: CGRect) {
        super.init(frame: .zero)
        contentView.addSubview(bg)
        contentView.addSubview(label)
        contentView.addSubview(directorLabel)
        contentView.addSubview(yearLabel)
        
        label.topAnchor.constraint(equalTo: bg.bottomAnchor,constant: 10).isActive = true
        label.leadingAnchor.constraint(equalTo: bg.leadingAnchor,constant: 10).isActive = true
        
        directorLabel.topAnchor.constraint(equalTo: label.bottomAnchor,constant: 10).isActive = true
        directorLabel.leadingAnchor.constraint(equalTo: label.leadingAnchor,constant: 0).isActive = true
        
        yearLabel.topAnchor.constraint(equalTo: directorLabel.bottomAnchor,constant: 10).isActive = true
        yearLabel.leadingAnchor.constraint(equalTo: directorLabel.leadingAnchor,constant: 0).isActive = true
        
        
        bg.topAnchor.constraint(equalTo: contentView.topAnchor).isActive = true
        bg.bottomAnchor.constraint(equalTo: contentView.bottomAnchor).isActive = true
        bg.leftAnchor.constraint(equalTo: contentView.leftAnchor).isActive = true
        bg.rightAnchor.constraint(equalTo: contentView.rightAnchor).isActive = true
        
       
      


    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
   
    }
    
    
}

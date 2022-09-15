//
//  CustomCell2.swift
//  T20CollectionView
//
//  Created by NeonApps on 15.09.2022.
//

import UIKit

class CustomCell2 : UICollectionViewCell {
    
    var data : TeamsData? {
        didSet {
            guard let data = data else {return}
            
            playerPic.image = data.image
            namelabel.text = "Name : \(data.playerName)"
            ageLabel.text = "Age : \(data.age)"
            clubLabel.text = "Club : \(data.club)"
            

        }
    }
    
    
    let playerPic : UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFit
//        imageView.clipsToBounds = true
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    let namelabel : UILabel = {
        let label = UILabel()
        label.textColor = .black
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let ageLabel : UILabel = {
        let label = UILabel()
        label.textColor = .black
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let clubLabel : UILabel = {
        let label = UILabel()
        label.textColor = .black
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    
    override init(frame: CGRect) {
        super.init(frame: .zero)
        contentView.addSubview(playerPic)
        contentView.addSubview(namelabel)
        contentView.addSubview(ageLabel)
        contentView.addSubview(clubLabel)
        
        playerPic.topAnchor.constraint(equalTo: contentView.topAnchor).isActive = true
        playerPic.leftAnchor.constraint(equalTo: contentView.leftAnchor).isActive = true
        playerPic.rightAnchor.constraint(equalTo: contentView.rightAnchor).isActive = true
        playerPic.bottomAnchor.constraint(equalTo: contentView.topAnchor, constant: 120).isActive = true
        
        namelabel.topAnchor.constraint(equalTo: playerPic.bottomAnchor, constant: 20).isActive = true
        namelabel.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 20).isActive = true
        
        ageLabel.topAnchor.constraint(equalTo: namelabel.bottomAnchor, constant: 20).isActive = true
        ageLabel.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 20).isActive = true
        
        clubLabel.topAnchor.constraint(equalTo: ageLabel.bottomAnchor, constant: 20).isActive = true
        clubLabel.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 20).isActive = true

        

        

    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

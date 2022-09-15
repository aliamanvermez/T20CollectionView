//
//  HorizontalVC.swift
//  T20CollectionView
//
//  Created by NeonApps on 15.09.2022.
//

import UIKit

struct TeamsData {
    var playerName : String
    var club : String
    var age : String
    var image : UIImage!
   
}

class HorizontalVC: UIViewController {
    
    let button = UIButton()
    
    let data = [
        TeamsData(playerName: "Ronaldo", club: "MANU", age: "37", image: UIImage(named: "ronaldo")),
        TeamsData(playerName: "Rashford", club: "MANU", age: "37", image: UIImage(named: "ronaldo") ),
        TeamsData(playerName: "Mata", club: "MANU", age: "37", image: UIImage(named: "ronaldo")),
        TeamsData(playerName: "Rashford", club: "MANU", age: "37", image: UIImage(named: "ronaldo") ),
        TeamsData(playerName: "Rashford", club: "MANU", age: "37", image: UIImage(named: "ronaldo") ),
        TeamsData(playerName: "Rashford", club: "MANU", age: "37", image: UIImage(named: "ronaldo") ),
        TeamsData(playerName: "Rashford", club: "MANU", age: "37", image: UIImage(named: "ronaldo") ),
        TeamsData(playerName: "Rashford", club: "MANU", age: "37", image: UIImage(named: "ronaldo") ),
        TeamsData(playerName: "Rashford", club: "MANU", age: "37", image: UIImage(named: "ronaldo") ),
        TeamsData(playerName: "Rashford", club: "MANU", age: "37", image: UIImage(named: "ronaldo") ),
        TeamsData(playerName: "Rashford", club: "MANU", age: "37", image: UIImage(named: "ronaldo") ),
        TeamsData(playerName: "Rashford", club: "MANU", age: "37", image: UIImage(named: "ronaldo") ),
    ]
    
     let collectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .vertical
        layout.minimumLineSpacing = 10
        layout.minimumInteritemSpacing = 1
//        layout.sectionInset = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
        let cv = UICollectionView(frame: .zero, collectionViewLayout: layout)
        cv.register(CustomCell2.self, forCellWithReuseIdentifier: "cell")
         
          return cv
      }()

    override func viewDidLoad() {
        super.viewDidLoad()
        createUI()
    }
    
    func createUI() {
        collectionViewCreated()
        buttonCreated()
    }
    
    func buttonCreated() {
        view.addSubview(button)
        button.setTitle("Back", for: .normal)
        button.backgroundColor = .black
        button.setTitleColor(.white, for: .normal)
        button.frame = CGRect(x: 0.3 * screenWidth, y: collectionView.frame.size.width + 350, width: 0.4 * screenWidth, height: 40)
        button.addTarget(self, action: #selector(backbuttonClicked), for: .touchUpInside)
    }
    @objc func backbuttonClicked() {
       let destinationVC = ViewController()
        destinationVC.modalPresentationStyle = .fullScreen
        present(destinationVC, animated: true)
    }
    
    
    
    func collectionViewCreated () {
        
        view.addSubview(collectionView)
        
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.backgroundColor = .systemGreen

        collectionView.contentInset = UIEdgeInsets(top: 0, left: 0.05 * screenWidth, bottom: 0, right: 0.05 *  screenWidth)
        collectionView.frame = CGRect(x: 0 * screenWidth, y: 0 * screenHeight, width: 1 * screenWidth, height: view.bounds.maxY)

    }
    

}

extension HorizontalVC : UICollectionViewDelegateFlowLayout, UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CustomCell2
        cell.backgroundColor = .white
        cell.data = self.data[indexPath.row]
        return cell
    }
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.frame.width / 2 - 0.1 * collectionView.frame.width, height: collectionView.frame.height/3)

    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return data.count
      
    }
    
}


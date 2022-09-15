//
//  ViewController.swift
//  T20CollectionView
//
//  Created by NeonApps on 14.09.2022.
//

import UIKit

struct CustomData {
    var title : String
    var director : String
    var year : String
    var image : UIImage!
    var url : String
}

class ViewController: UIViewController {
    
    let button = UIButton()
 
    let data = [
        CustomData(title: "Interstellar", director: "Nolan", year: "2014", image: UIImage(named: "interstellar"), url: ""),
        CustomData(title: "Tenet", director: "Nolan", year: "2019", image: UIImage(named: "tenet"), url: ""),
        CustomData(title: "Inception", director: "Nolan", year: "2017", image: UIImage(named: "inception"), url: "")
]

    fileprivate let collectionView:UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        let cv = UICollectionView(frame: .zero, collectionViewLayout: layout)
        cv.register(CustomCell.self, forCellWithReuseIdentifier: "cell")
          return cv
      }()
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        setDefaultSize(view: view)
        createUI()
    }
    func createUI() {
        view.backgroundColor = .white
        collectionViewCreated()
        
        button.setTitle("Vertical CV", for: .normal)
        button.backgroundColor = .systemPink
        button.frame = CGRect(x: 0.3 * screenWidth, y: 0.87 * screenHeight, width: 0.4 * screenWidth, height: 30)
        view.addSubview(button)
        button.addTarget(self, action: #selector(verticalCVButtonClicked), for: .touchUpInside)
        
    }
    
    @objc func verticalCVButtonClicked() {
        let destinationVC = HorizontalVC()
        destinationVC.modalPresentationStyle = .fullScreen
        present(destinationVC, animated: true)
        
    }
    
    
    
    func collectionViewCreated () {
        
        view.addSubview(collectionView)
        collectionView.backgroundColor = .white
        
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.backgroundColor = .systemPink
        collectionView.frame = CGRect(x: 0 * screenWidth, y: 0.1 * screenHeight, width: 1 * screenWidth, height: 600)
    }
}
extension ViewController : UICollectionViewDelegateFlowLayout, UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.frame.width/1.5, height: collectionView.frame.width/1)

    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return data.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CustomCell
        cell.backgroundColor = .systemPink
        cell.data = self.data[indexPath.row]
        return cell
           
    }
    
}



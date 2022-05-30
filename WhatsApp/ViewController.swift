//
//  ViewController.swift
//  WhatsApp
//
//  Created by Евгений Березенцев on 30.05.2022.
//

import UIKit

class ViewController: UIViewController {
    
    lazy var collectionView: UICollectionView = {
        let collection = UICollectionView(frame: view.bounds, collectionViewLayout: UICollectionViewFlowLayout())
//        collection.frame = view.bounds
        collection.backgroundColor = .systemBlue
        return collection
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.backgroundColor = .orange
        navigationController?.navigationBar.prefersLargeTitles = true
        navigationItem.title = "Camera"
        view.addSubview(collectionView)
    }


}


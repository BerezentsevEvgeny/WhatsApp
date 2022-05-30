//
//  MessgesViewController.swift
//  WhatsApp
//
//  Created by Евгений Березенцев on 30.05.2022.
//

import UIKit

private let reuseIdentifier = "Cell"

class MessgesViewController: UICollectionViewController {
    
    let searchController = UISearchController()
    
    var dataSource: UICollectionViewDiffableDataSource<Section,Message>!

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.searchController = searchController
        navigationItem.searchController?.hidesNavigationBarDuringPresentation = true
        // Title
        navigationController?.navigationBar.prefersLargeTitles = true
        navigationItem.title = "Chats"
        // BarButtons
        navigationItem.leftBarButtonItem = UIBarButtonItem(systemItem: .edit)
        navigationItem.rightBarButtonItem = UIBarButtonItem(image: UIImage(systemName: "square.and.pencil"), style: .plain, target: nil, action: nil)
        collectionView.collectionViewLayout = createLayout()
        createDataSource()
    }
    
    private func createLayout() -> UICollectionViewLayout {
        let layout = UICollectionViewCompositionalLayout { sectionIndex, environment in
            
            let headerSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1.0), heightDimension: .absolute(44))
            let header = NSCollectionLayoutBoundarySupplementaryItem(layoutSize: headerSize, elementKind: "header", alignment: .top)
            
            let config = UICollectionLayoutListConfiguration(appearance: .plain)
            let section = NSCollectionLayoutSection.list(using: config, layoutEnvironment: environment)
            section.boundarySupplementaryItems = [header]
            return section
        }
        return layout
    }


    // MARK: UICollectionViewDataSource
    
    private func createDataSource() {
        let cellRegistrtion = UICollectionView.CellRegistration<UICollectionViewListCell,Message> { cell, indexPath, itemIdentifier in
            var content = cell.defaultContentConfiguration()
            content.text = itemIdentifier.contact
            content.textProperties.font = UIFont.systemFont(ofSize: 20, weight: .semibold)
            content.secondaryText = itemIdentifier.text
            content.imageProperties.maximumSize = CGSize(width: 80, height: 80)
            content.imageProperties.cornerRadius = 40
            content.image = itemIdentifier.image
            cell.contentConfiguration = content
        }
        
        let headerRegistration = UICollectionView.SupplementaryRegistration<HeaderView>( elementKind: "header") { supplementaryView, elementKind, indexPath in
          
        }
        
        dataSource = UICollectionViewDiffableDataSource<Section,Message>(collectionView: collectionView, cellProvider: { collectionView, indexPath, itemIdentifier in

            collectionView.dequeueConfiguredReusableCell(using: cellRegistrtion, for: indexPath, item: itemIdentifier)
        })
        
        dataSource.supplementaryViewProvider = { (view, kind, index) in
            self.collectionView.dequeueConfiguredReusableSupplementary(using: headerRegistration, for: index)
        }
        
        

        var snapshot = NSDiffableDataSourceSnapshot<Section,Message>()
        snapshot.appendSections([.messages])
        snapshot.appendItems(Message.getMessages())
        
        dataSource.apply(snapshot)
    }




    
    

}

extension MessgesViewController {
    enum Section {
        case messages
    }
}

// MARK: UICollectionViewDelegate

/*
// Uncomment this method to specify if the specified item should be highlighted during tracking
override func collectionView(_ collectionView: UICollectionView, shouldHighlightItemAt indexPath: IndexPath) -> Bool {
    return true
}
*/

/*
// Uncomment this method to specify if the specified item should be selected
override func collectionView(_ collectionView: UICollectionView, shouldSelectItemAt indexPath: IndexPath) -> Bool {
    return true
}
*/

/*
// Uncomment these methods to specify if an action menu should be displayed for the specified item, and react to actions performed on the item
override func collectionView(_ collectionView: UICollectionView, shouldShowMenuForItemAt indexPath: IndexPath) -> Bool {
    return false
}

override func collectionView(_ collectionView: UICollectionView, canPerformAction action: Selector, forItemAt indexPath: IndexPath, withSender sender: Any?) -> Bool {
    return false
}

override func collectionView(_ collectionView: UICollectionView, performAction action: Selector, forItemAt indexPath: IndexPath, withSender sender: Any?) {

}
*/


//
//  LibraryCollectionVC.swift
//  WYOH
//
//  Created by Никита Зюзин on 24.10.2022.
//

import UIKit

class LibraryCollectionVC: UICollectionViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.backgroundColor = .white
        let index = collectionView.indexPathsForSelectedItems
        collectionView.deleteItems(at: index!)
    }
    
    let itemsPerRow: CGFloat = 2
    let sectionInesrts = UIEdgeInsets(top: 20, left: 20, bottom: 20, right: 20)

    
    @IBAction func deleteItem(_ sender: UIButton) {
        let index = collectionView.indexPathsForSelectedItems
        collectionView.deleteItems(at: index!)
    }
    
    
    
    

// MARK: UICollectionViewDataSource

override func numberOfSections(in collectionView: UICollectionView) -> Int {
    // #warning Incomplete implementation, return the number of sections
    return  1
}


override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
    // #warning Incomplete implementation, return the number of items
    return 4
}

override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
    let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "libraryCell", for: indexPath) as! LibraryCell

//    let imageName = photos[indexPath.item]
//    let image = UIImage(named: imageName)
//    cell.StickerImageView.image = image
  
    let index = collectionView.indexPathsForSelectedItems
    collectionView.deleteItems(at: index!)
    cell.backgroundColor = .red
    return cell
    
    }

}

extension LibraryCollectionVC: UICollectionViewDelegateFlowLayout {
    
        func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
            
            let paddingWidth = sectionInesrts.left * (itemsPerRow + 1)
            let availableWidth = collectionView.frame.width - paddingWidth
            let widthPerItem = availableWidth / itemsPerRow
           return CGSize(width: widthPerItem, height: widthPerItem - 100)
        }

        func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
            return sectionInesrts
        }

        func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
            return sectionInesrts.left
        }

        func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
            return sectionInesrts.left
        }
}

    






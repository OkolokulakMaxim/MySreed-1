//
//  FourthVC.swift
//  MyScreed
//
//  Created by Александр Майко on 24/04/2020.
//  Copyright © 2020 Александр Майко. All rights reserved.
//

import UIKit

class PicturesDetailsViewController: UICollectionViewController {
    
    var agregateTitle: String?
    var imagesOfAgregates: [UIImage?] = []
    let itemsPerRow: CGFloat = 2 //вынесли из метода, так как здесь удобнее вносить изменения
    let sectionsInsets = UIEdgeInsets(top: 20, left: 10, bottom: 20, right: 10) // аналогично
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
       configureNavigationController()
    }
    
    private func configureNavigationController() {
        let backButton = UIBarButtonItem()
        backButton.title = "назад"
        title = agregateTitle
        self.navigationController?.navigationBar.topItem?.backBarButtonItem = backButton
    }

    func showNextVC(detailImage: UIImage?) {
        guard let image = detailImage else {return}
        let storyboard = UIStoryboard(storyboard: .main)
        let detailsViewController: DetailsViewController = storyboard.instantiateViewController()
        detailsViewController.image = image
        navigationController?.pushViewController(detailsViewController, animated: true)
    }
}

extension PicturesDetailsViewController: UICollectionViewDelegateFlowLayout {
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return imagesOfAgregates.count
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: String(describing: CollectionViewCell.self), for: indexPath) as! CollectionViewCell
        cell.backgroundColor = .red
        cell.imageFromCell.image = imagesOfAgregates[indexPath.row]
        return cell
    }
    
    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        showNextVC(detailImage: imagesOfAgregates[indexPath.item])
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let paddingWidth = sectionsInsets.left * (itemsPerRow + 1)
        let itemWidth = (collectionView.frame.width - paddingWidth) / itemsPerRow
        let itemHight = itemWidth
        return CGSize(width: itemWidth, height: itemHight)
    }
}



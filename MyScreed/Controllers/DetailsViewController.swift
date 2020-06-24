//
//  FifthVC.swift
//  MyScreed
//
//  Created by Александр Майко on 24.05.2020.
//  Copyright © 2020 Александр Майко. All rights reserved.
//

import UIKit

class DetailsViewController: UIViewController {
    
    var imageScrollView: ImageScrollView!
    var image: UIImage?

    override func viewDidLoad() {
        super.viewDidLoad()
        imageScrollView = ImageScrollView(frame: view.bounds)
        view.addSubview(imageScrollView)
        setupImageScrollView()
        self.imageScrollView.set(image: image!)
    }
    
    func setupImageScrollView() {
        imageScrollView.translatesAutoresizingMaskIntoConstraints = false
        imageScrollView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        imageScrollView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        imageScrollView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        imageScrollView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
    }
}

//
//  ThirdVC.swift
//  MyScreed
//
//  Created by Александр Майко on 24/04/2020.
//  Copyright © 2020 Александр Майко. All rights reserved.
//

import UIKit

class PumpsMarkViewController: UIViewController {
    
    @IBOutlet weak var agregateImageView: UIImageView!
    
    
    private func addSroll() {
        
    }
    
    var agregates: [AgregateModel] = []
    var markOfPumpImage: UIImage?
    var pumpsModel: PumpsModel?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        createPumpsArray()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        configureUI()
    }
    
    private func configureUI() {
        setImage()
        configureNavigationController()
    }
    
    private func setImage() {
        agregateImageView.image = markOfPumpImage
    }
    
    private func configureNavigationController() {
        let backButton = UIBarButtonItem()
        backButton.title = "назад"
        title = pumpsModel?.modelName
        navigationController?.navigationBar.topItem?.backBarButtonItem = backButton
    }
    
    private func createPumpsArray() {
        if let agregatesArray = pumpsModel?.agregates {
            agregates = agregatesArray
        }
    }
    
    func showNextVC(agregate: AgregateModel) {
        let storyboard = UIStoryboard(storyboard: .main)
        let picturesDetailsViewController: PicturesDetailsViewController = storyboard.instantiateViewController()
        picturesDetailsViewController.imagesOfAgregates = agregate.images
        picturesDetailsViewController.agregateTitle = agregate.name
        navigationController?.pushViewController(picturesDetailsViewController, animated: true)
    }
}

extension PumpsMarkViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return agregates.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell3 = tableView.dequeueReusableCell(withIdentifier: String(describing: TableViewCell3.self), for: indexPath)
            as! TableViewCell3
        cell3.configureCell3(agregate: agregates[indexPath.row])
        return cell3
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 50
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        showNextVC(agregate: agregates[indexPath.row])
    }
}


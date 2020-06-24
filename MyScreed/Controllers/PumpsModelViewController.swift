//
//  SecondVC.swift
//  MyScreed
//
//  Created by Александр Майко on 23/04/2020.
//  Copyright © 2020 Александр Майко. All rights reserved.
//

import UIKit

class PumpsModelViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var pumpsImageView: UIImageView!
    
    var modelOfPump: [PumpsModel] = []
    var marksModel: MarksModel?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        createPumpsArray()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        configureUI()
    }
    
    private func createPumpsArray() {
        if let pumpsArray = marksModel?.models as? [PumpsModel] {
            self.modelOfPump = pumpsArray
        }
    }
    
    private func configureUI() {
        setImage(image: marksModel?.markImage)
        configureNavigationController()
    }
    
    private func configureNavigationController() {
        let backButton = UIBarButtonItem()
        backButton.title = "назад"
        title = marksModel?.markName
        self.navigationController?.navigationBar.topItem?.backBarButtonItem = backButton
    }
    
    private func setImage(image: UIImage?) {
        pumpsImageView.image = image
    }
    
    private func showNextVC(model: PumpsModel) {
        let storyboard = UIStoryboard(storyboard: .main)
        let pumpsMarkViewController: PumpsMarkViewController = storyboard.instantiateViewController()
        pumpsMarkViewController.pumpsModel = model
        pumpsMarkViewController.markOfPumpImage = marksModel?.markImage
        navigationController?.pushViewController(pumpsMarkViewController, animated: true)
    }
}

extension PumpsModelViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return modelOfPump.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell2 = tableView.dequeueReusableCell(withIdentifier: String(describing: TableViewCell2.self), for: indexPath) as! TableViewCell2
        cell2.titlelabel.text = modelOfPump[indexPath.row].modelName
        return cell2
    }

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 50
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        showNextVC(model: modelOfPump[indexPath.row] )
    }
}

//
//  ViewController.swift
//  MyScreed
//
//  Created by Александр Майко on 23/04/2020.
//  Copyright © 2020 Александр Майко. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    var pumpsArray = PampsArray.pumpsArray
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI()
    }
    
    private func configureUI() {
        configureTableView()
        title = "My Screed"
    }
    
    private func configureTableView() {
        tableView.register(UINib(nibName: String(describing: TableViewCell.self), bundle: nil), forCellReuseIdentifier: String(describing: TableViewCell.self))
    }

    func showNextVC(mark: MarksModel) {
        let storyboard = UIStoryboard(storyboard: .main)
        let secondVC: PumpsModelViewController = storyboard.instantiateViewController()
        secondVC.marksModel = mark
        navigationController?.pushViewController(secondVC, animated: true)
    }
}

extension MainViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return pumpsArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: String(describing: TableViewCell.self), for: indexPath) as! TableViewCell
        cell.configureCell(pumpsModel: pumpsArray[indexPath.row])
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 120
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        showNextVC(mark: pumpsArray[indexPath.row])
        tableView.deselectRow(at: indexPath, animated: true)
    }
}


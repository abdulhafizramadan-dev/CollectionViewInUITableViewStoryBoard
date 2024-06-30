//
//  ViewController.swift
//  CollectionViewInUITableViewStoryBoard
//
//  Created by Abdul Hafiz Ramadan on 30/06/24.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet var tableView: UITableView!
    
    var models = [PhotoModel]()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        models.append(PhotoModel(name: "First", photo: "image_1"))
        models.append(PhotoModel(name: "Second", photo: "image_2"))
        models.append(PhotoModel(name: "Third", photo: "image_3"))
        models.append(PhotoModel(name: "Fourth", photo: "image_4"))
        
        tableView.register(PhotoTableViewCell.nib(), forCellReuseIdentifier: PhotoTableViewCell.identifier)
        
        tableView.dataSource = self
        tableView.delegate = self
    }
    
    // Table View
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return models.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: PhotoTableViewCell.identifier, for: indexPath) as! PhotoTableViewCell
        cell.configure(with: models)
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 250.0
    }
}

struct PhotoModel {
    let name: String
    let photo: String
    
    init(name: String, photo: String) {
        self.name = name
        self.photo = photo
    }
}


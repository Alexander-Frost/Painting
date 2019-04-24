//
//  PaintingViewController.swift
//  Painting
//
//  Created by Alex on 4/24/19.
//  Copyright © 2019 Alex. All rights reserved.
//

import UIKit

class PaintingViewController: UIViewController {

    let paintingController = PaintingController()
    
    @IBOutlet var tableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self

    }
    
    override func viewWillAppear(_ animated: Bool) {
        tableView.reloadData()
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
extension PaintingViewController: UITableViewDelegate{
    
}
extension PaintingViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return paintingController.paintings.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        guard let paintingCell = cell as? PaintingTableViewCell else {return cell}
        
        let myPainting = paintingController.paintings[indexPath.row]
        paintingCell
        
        return paintingCell
    }
    
    
}

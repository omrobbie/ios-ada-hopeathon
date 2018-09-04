//
//  PointViewController.swift
//  Hopeathon
//
//  Created by omrobbie on 04/09/18.
//  Copyright © 2018 omrobbie. All rights reserved.
//

import UIKit

var dummyArray = [
    ["pointName" : "Pos Lombok Utara 1",
     "pointLoc" : "Dusun Xxx Lombok Utara"],
    ["pointName" : "Pos Lombok Utara 2",
     "pointLoc" : "Rumah Sakit Umum Daerah"],
    ["pointName" : "Pos Lombok Selatan 1",
     "pointLoc" : "Balai warga dusun Yyy"],
    ["pointName" : "Pos Lombok Utara 1",
     "pointLoc" : "Lapangan Bola"],
    ["pointName" : "Pos Lombok Pusat 1",
     "pointLoc" : "Dusun Aaa"],
    ["pointName" : "Pos Lombok Timur 1",
     "pointLoc" : "Balai warga Bbb Lombok Timur"]
]

class PointViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    var dataSelected = [String:String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destination = segue.destination as! PointMainViewController
        //let destination = PointMainViewController()
        print(dataSelected)
        print("ss")
        //PointMainViewController().pointData = dataSelected
        destination.pointData = dataSelected
    }
}

extension PointViewController: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dummyArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "pointcell") as! PointCell
        
        configCell(cell, indexPath: indexPath)
        return cell
    }
    
    func configCell(_ cell: PointCell, indexPath: IndexPath) {
        let dataForRow = dummyArray[indexPath.row]
        cell.titleLabel.text = dataForRow["pointName"]
        cell.subtitleLabel.text = dataForRow["pointLoc"]
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //idSelected = indexPath.row
        dataSelected = dummyArray[indexPath.row]
        performSegue(withIdentifier: "toDetailPoint", sender: self)
    }
    
    
}

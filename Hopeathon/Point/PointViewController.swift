//
//  PointViewController.swift
//  Hopeathon
//
//  Created by omrobbie on 04/09/18.
//  Copyright © 2018 omrobbie. All rights reserved.
//

import UIKit



class PointViewController: UIViewController {

    var points = [Point]()
    
    @IBOutlet weak var tableView: UITableView!
    var dataSelected : Point!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        points.append(Point(id: "0", name: "Pos Lombok Utara 1", leader: "Pak Hari", location: "Dusun Abc Desa Def", type: "titik distribusi", phone: "089678786525"))
        points.append(Point(id: "1", name: "Pos Lombok Utara 2", leader: "dr. Devid", location: "Rumah Sakit Umum Daerah", type: "posko medis", phone: "088822121111"))
        points.append(Point(id: "2", name: "Pos Lombok Timur 1", leader: "Sapto", location: "Lapangan bola Desa Melati", type: "pengungsian", phone: "087866775654"))
        points.append(Point(id: "3", name: "Pos Lombok Timur 2", leader: "Pak Turah", location: "Balai warga RW 4 Desa Pisang", type: "pengungsian", phone: "028165652412"))
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
        return points.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "pointcell") as! PointCell
        
        configCell(cell, indexPath: indexPath)
        return cell
    }
    
    func configCell(_ cell: PointCell, indexPath: IndexPath) {
        let dataForRow = points[indexPath.row]
        cell.titleLabel.text = dataForRow.name
        cell.subtitleLabel.text = dataForRow.location
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //idSelected = indexPath.row
        dataSelected = points[indexPath.row]
        performSegue(withIdentifier: "toDetailPoint", sender: self)
    }
    
    
}

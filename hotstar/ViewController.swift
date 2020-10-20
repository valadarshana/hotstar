//
//  ViewController.swift
//  hotstar
//
//  Created by Vijay Parmar on 19/10/20.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tblSerial:UITableView!
    
    var movie = ["movie1","movie2","movie3"]
    var serial = ["img1","img2","img3"]
    var namelbl = ["serial","movie","other"]
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.tblse
        tblSerial.dataSource = self
        tblSerial.delegate = self
    }


}

extension ViewController :UITableViewDelegate,UITableViewDataSource{
    
   
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TableViewCell", for: indexPath)as! TableViewCell
        
        cell.index = indexPath.row
        cell.lblTitle.text=namelbl[indexPath.row]
        if indexPath.row == 0
        {
            cell.moviearr = movie
        }
        else{
            cell.moviearr = serial
        }
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
       
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.row == 0{
            return 250
        }else{
            return 150
        }
        
    }
    
}


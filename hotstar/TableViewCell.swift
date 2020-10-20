//
//  TableViewCell.swift
//  hotstar
//
//  Created by Vijay Parmar on 19/10/20.
//

import UIKit

class TableViewCell: UITableViewCell,UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout{

    @IBOutlet weak var lblTitle: UILabel!
    
    @IBOutlet weak var colSearialList: UICollectionView!
    //svar arrimgSerial = [String]()
    var moviearr = [String]()
    var index = 0
    override func awakeFromNib() {
        super.awakeFromNib()
        colSearialList.delegate = self
        colSearialList.dataSource = self
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return moviearr.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "SerialCollectionViewCell", for: indexPath)as! SerialCollectionViewCell
        cell.imgSerial.image = UIImage(named: moviearr[indexPath.row])
    
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        if index == 0{
            return CGSize(width: collectionView.frame.width/3, height: collectionView.frame.height)
        }else{
            return CGSize(width: collectionView.frame.width/2, height: collectionView.frame.height)
        }
        
    }
    

}

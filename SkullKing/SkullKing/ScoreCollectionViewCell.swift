//
//  ScoreCollectionViewCell.swift
//  SkullKing
//
//  Created by neohago on 2021/07/20.
//

import UIKit

class ScoreCollectionViewCell: UICollectionViewCell {
    static let identifier: String = "scoreCell"
    
    @IBOutlet weak var titleLabel: UILabel!
    
    
    var round: Int = 0
    
    override class func awakeFromNib() {
        super.awakeFromNib()
    }
    
    func configure(round: Int) {
        self.round = round
        
        titleLabel.text = "승리예측"
        
    }
    
    func configure_start() {
        titleLabel.text = ""
    }
    
    
    @IBAction func onMinus(_ sender: Any) {
    }
    
    @IBAction func onPlus(_ sender: Any) {
    }
}

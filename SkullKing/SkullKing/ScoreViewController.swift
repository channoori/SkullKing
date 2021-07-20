//
//  ScoreViewController.swift
//  SkullKing
//
//  Created by neohago on 2021/07/20.
//

import UIKit

class ScoreViewController: UIViewController {

    @IBOutlet weak var player1Name: UILabel!
    @IBOutlet weak var player2Name: UILabel!
    @IBOutlet weak var player3Name: UILabel!
    @IBOutlet weak var player4Name: UILabel!
    @IBOutlet weak var player5Name: UILabel!
    @IBOutlet weak var player6Name: UILabel!
    
    @IBOutlet weak var player1Result: UILabel!
    @IBOutlet weak var player2Result: UILabel!
    @IBOutlet weak var player3Result: UILabel!
    @IBOutlet weak var player4Result: UILabel!
    @IBOutlet weak var player5Result: UILabel!
    @IBOutlet weak var player6Result: UILabel!
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    var oneRStart: Bool = false
    var twoRStart: Bool = false
    var threeRStart: Bool = false
    var fourRStart: Bool = false
    var fiveRStart: Bool = false
    var sixRStart: Bool = false
    var sevenRStart: Bool = false
    var eightRStart: Bool = false
    var nineRStart: Bool = false
    var tenRStart: Bool = false
    
    var oneREnd: Bool = false
    var twoREnd: Bool = false
    var threeREnd: Bool = false
    var fourREnd: Bool = false
    var fiveREnd: Bool = false
    var sixREnd: Bool = false
    var sevenREnd: Bool = false
    var eightREnd: Bool = false
    var nineREnd: Bool = false
    var tenREnd: Bool = false
    
    
    
    
    
    var playerCount: Int = 0
    var currentRound: Int = 1
    let TotalRound: Int = 10
    
    override func viewDidLoad() {
        super.viewDidLoad()

        collectionView.delegate = self
        collectionView.dataSource = self
        
    }

    @IBAction func onEnd1R(_ sender: Any) {
        if oneRStart {
             oneREnd = true
        } else {
            oneRStart = true
        }
    }
    
    @IBAction func onEnd2R(_ sender: Any) {
        if twoRStart {
             twoREnd = true
        } else {
            twoRStart = true
        }
    }
    
    @IBAction func onEnd3R(_ sender: Any) {
        if threeRStart {
             threeREnd = true
        } else {
            threeRStart = true
        }
    }
    
    @IBAction func onEnd4R(_ sender: Any) {
        if fourRStart {
             fourREnd = true
        } else {
            fourRStart = true
        }
    }
    
    @IBAction func onEnd5R(_ sender: Any) {
        if fiveRStart {
             fiveREnd = true
        } else {
            fiveRStart = true
        }
    }
    
    @IBAction func onEnd6R(_ sender: Any) {
        if sixRStart {
             sixREnd = true
        } else {
            sixRStart = true
        }
    }
    
    @IBAction func onEnd7R(_ sender: Any) {
        if sevenRStart {
             sevenREnd = true
        } else {
            sevenRStart = true
        }
    }
    
    @IBAction func onEnd8R(_ sender: Any) {
        if eightRStart {
             eightREnd = true
        } else {
            eightRStart = true
        }
    }
    
    @IBAction func onEnd9R(_ sender: Any) {
        if nineRStart {
             nineREnd = true
        } else {
            nineRStart = true
        }
    }
    
    @IBAction func onEnd10R(_ sender: Any) {
        if tenRStart {
             tenREnd = true
        } else {
            tenRStart = true
        }
    }
    
}

extension ScoreViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return playerCount
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: ScoreCollectionViewCell.identifier, for: indexPath)as? ScoreCollectionViewCell else { return ScoreCollectionViewCell() }
        
        cell.configure(round: 0)
        
        return cell
    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return currentRound
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: (collectionView.frame.width / CGFloat(playerCount)), height: 48)
    }
    
    
}

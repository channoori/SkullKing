//
//  ViewController.swift
//  SkullKing
//
//  Created by neohago on 2021/06/09.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var minusBtn: UIButton!
    @IBOutlet weak var plusBtn: UIButton!
    @IBOutlet weak var playerCountLabel: UILabel!
    
    var player: Int = 0 {
        didSet {
            playerCountLabel.text = "\(player)"
        }
    }
    
    var minimumPlayer: Int = 2
    var maximumPlayer: Int = 6
    
    override func viewDidLoad() {
        super.viewDidLoad()

        uiInitialize()
        
    }
    
    @IBAction func onMinus(_ sender: Any) {
        if player > 0 {
            player -= 1
        }
    }
    
    @IBAction func onPlus(_ sender: Any) {
        if player < maximumPlayer {
            player += 1
        }
    }
    
    @IBAction func onInsert(_ sender: Any) {
        if player < minimumPlayer {
            let alert = UIAlertController(title: "스컬킹", message: "플레이어가 \(player)명 입니다.\n플레이어가 최소 \(minimumPlayer)명 이상이여야 합니다.", preferredStyle: .alert)
            let confirm = UIAlertAction(title: "확인", style: .default, handler: nil)
            alert.addAction(confirm)
            self.present(alert, animated: true, completion: nil)
        } else {
            
        }
    }
    

}

extension ViewController {
    func uiInitialize() {
        player = 0
    }
}


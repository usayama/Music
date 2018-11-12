//
//  ViewController.swift
//  Music
//
//  Created by Yusuke Nakane on 2018/11/12.
//  Copyright © 2018 usayama. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    // シンバルの音源ファイルを指定
    let cymbalPath = Bundle.main.bundleURL.appendingPathComponent("cymbal.mp3")
    
    // シンバル用のプレイヤーインスタンスを作成
    var cymbalPlayer = AVAudioPlayer()
}


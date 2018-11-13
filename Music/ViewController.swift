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
        print(Bundle.main)
    }

    // シンバルの音源ファイルを指定
    let cymbalPath = Bundle.main.bundleURL.appendingPathComponent("cymbal.mp3")
    // シンバル用のプレイヤーインスタンスを作成
    var cymbalPlayer = AVAudioPlayer()
    
    @IBAction func cymbal(_ sender: Any) {
        do {
            // シンバル用のプレイヤーに音源パスを指定
            cymbalPlayer = try AVAudioPlayer(contentsOf: cymbalPath, fileTypeHint: nil)
            // シンバルの音源再生
            cymbalPlayer.play()
        } catch {
            print("シンバルで、エラーが発生しました！")
        }

    }
    
    // ギター音源のパスを変数に格納
    let guitarPath = Bundle.main.bundleURL.appendingPathComponent("guitar.mp3")
    // ギター用のプレイヤーイオンスタンスを作成
    var guitarPlayer = AVAudioPlayer()
    
    @IBAction func guitar(_ sender: Any) {
        do {
            // ギター用のプレイヤーに音源パスを指定
            guitarPlayer = try AVAudioPlayer(contentsOf: guitarPath)
            // 音を再生
            guitarPlayer.play()
        } catch {
            print("ギターで、エラーが発生しました！")
        }
    }
    
}


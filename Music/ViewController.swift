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
        // 関数を呼んでシンバルを鳴らす
        soundPlayer(player: &cymbalPlayer, path: cymbalPath, count: 0)
    }
    
    // ギター音源のパスを変数に格納
    let guitarPath = Bundle.main.bundleURL.appendingPathComponent("guitar.mp3")
    // ギター用のプレイヤーイオンスタンスを作成
    var guitarPlayer = AVAudioPlayer()
    
    @IBAction func guitar(_ sender: Any) {
        // 関数を呼んでギターを鳴らす
        soundPlayer(player: &guitarPlayer, path: guitarPath, count: 0)
    }
    
    // BGM音源の音源ファイルを指定
    let backmusicPath = Bundle.main.bundleURL.appendingPathComponent("finger.mp3")
    // BGMのインスタンスを作成
    var backmusicPlayer = AVAudioPlayer()
    
    @IBAction func play(_ sender: Any) {
        soundPlayer(player: &backmusicPlayer, path: backmusicPath, count: -1)
    }
    
    @IBAction func stop(_ sender: Any) {
        // バックミュージックを停止
        backmusicPlayer.stop()
    }
    
    fileprivate func soundPlayer(player:inout AVAudioPlayer, path: URL, count: Int) {
        do {
            // 音源のパスを指定
            player = try AVAudioPlayer(contentsOf: path)
            // ループを設定
            player.numberOfLoops = count
            // 再生
            player.play()
        } catch {
            print("エラー")
        }
    }
}


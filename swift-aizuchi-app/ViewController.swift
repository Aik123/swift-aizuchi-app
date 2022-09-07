//
//  ViewController.swift
//  swift-aizuchi-app
//
//  Created by Ai Kurita on 2022/09/07.
//

import UIKit
import AVFoundation
import AVKit

class ViewController: UIViewController {
    
    var player = AVAudioPlayer()
    var currentVolume: Float = 1.0

    @IBOutlet weak var volumeSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func volumeChanged(_ sender: UISlider) {
        currentVolume = volumeSlider.value
    }
    
    // うんうんボタン
    @IBAction func ununButton(_ sender: UIButton) {
        let pathToSound = Bundle.main.path(forResource: "unun", ofType: "m4a")!
        let url = URL(fileURLWithPath: pathToSound)

        do{
            player = try AVAudioPlayer(contentsOf: url)
            player.volume = currentVolume
            player.play()
        } catch let error {
            print("Error playing sound. \(error.localizedDescription)")
        }
    }

    // へ〜ボタン
    @IBAction func heeButton(_ sender: UIButton) {
        let pathToSound = Bundle.main.path(forResource: "hee", ofType: "m4a")!
        let url = URL(fileURLWithPath: pathToSound)

        do{
            player = try AVAudioPlayer(contentsOf: url)
            player.volume = currentVolume
            player.play()
        } catch let error {
            print("Error playing sound. \(error.localizedDescription)")
        }
    }
    
    // どうしてボタン
    @IBAction func doshiteButton(_ sender: UIButton) {
        let pathToSound = Bundle.main.path(forResource: "doushite", ofType: "m4a")!
        let url = URL(fileURLWithPath: pathToSound)

        do{
            player = try AVAudioPlayer(contentsOf: url)
            player.volume = currentVolume
            player.play()
        } catch let error {
            print("Error playing sound. \(error.localizedDescription)")
        }
    }

    // ほんとにボタン
    @IBAction func hontoniButton(_ sender: UIButton) {
        let pathToSound = Bundle.main.path(forResource: "hontoni", ofType: "m4a")!
        let url = URL(fileURLWithPath: pathToSound)

        do{
            player = try AVAudioPlayer(contentsOf: url)
            player.volume = currentVolume
            player.play()
        } catch let error {
            print("Error playing sound. \(error.localizedDescription)")
        }
    }
    
    // なるほどボタン
    @IBAction func naruhodoButton(_ sender: UIButton) {
        let pathToSound = Bundle.main.path(forResource: "naruhodo", ofType: "m4a")!
        let url = URL(fileURLWithPath: pathToSound)

        do{
            player = try AVAudioPlayer(contentsOf: url)
            player.volume = currentVolume
            player.play()
        } catch let error {
            print("Error playing sound. \(error.localizedDescription)")
        }
    }
    
    // さすがボタン
    @IBAction func sasugaButton(_ sender: UIButton) {
        let pathToSound = Bundle.main.path(forResource: "sasuga", ofType: "m4a")!
        let url = URL(fileURLWithPath: pathToSound)

        do{
            player = try AVAudioPlayer(contentsOf: url)
            player.volume = currentVolume
            player.play()
        } catch let error {
            print("Error playing sound. \(error.localizedDescription)")
        }
    }
    
    // それでそれでボタン
    @IBAction func soredeButton(_ sender: UIButton) {
        let pathToSound = Bundle.main.path(forResource: "sorede", ofType: "m4a")!
        let url = URL(fileURLWithPath: pathToSound)

        do{
            player = try AVAudioPlayer(contentsOf: url)
            player.volume = currentVolume
            player.play()
        } catch let error {
            print("Error playing sound. \(error.localizedDescription)")
        }
    }
    
    // そうそうボタン
    @IBAction func sousouButton(_ sender: UIButton) {
        let pathToSound = Bundle.main.path(forResource: "sousou", ofType: "m4a")!
        let url = URL(fileURLWithPath: pathToSound)

        do{
            player = try AVAudioPlayer(contentsOf: url)
            player.volume = currentVolume
            player.play()
        } catch let error {
            print("Error playing sound. \(error.localizedDescription)")
        }
    }
    
    // すごいボタン
    @IBAction func sugoiButton(_ sender: UIButton) {
        let pathToSound = Bundle.main.path(forResource: "sugoi", ofType: "m4a")!
        let url = URL(fileURLWithPath: pathToSound)

        do{
            player = try AVAudioPlayer(contentsOf: url)
            player.volume = currentVolume
            player.play()
        } catch let error {
            print("Error playing sound. \(error.localizedDescription)")
        }
    }
    
    // わかるボタン
    @IBAction func wakaruButton(_ sender: UIButton) {
        let pathToSound = Bundle.main.path(forResource: "wakaru", ofType: "m4a")!
        let url = URL(fileURLWithPath: pathToSound)

        do{
            player = try AVAudioPlayer(contentsOf: url)
            player.volume = currentVolume
            player.play()
        } catch let error {
            print("Error playing sound. \(error.localizedDescription)")
        }
    }
    
    
}


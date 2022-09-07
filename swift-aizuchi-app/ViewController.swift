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
    
    @IBAction func ununButton(_ sender: UIButton) {
        let pathToSound = Bundle.main.path(forResource: "unx2", ofType: "m4a")!
        let url = URL(fileURLWithPath: pathToSound)
        
        do{
            player = try AVAudioPlayer(contentsOf: url)
            player.volume = currentVolume
            player.play()
        } catch let error {
            print("Error playing sound. \(error.localizedDescription)")
        }
    }
    
    
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
    
    
}


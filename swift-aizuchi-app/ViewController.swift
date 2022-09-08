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
//    let myButton = UIButton()
//    let sounds = ["unun","hee","doushite","hontoni","naruhodo","sasuga","sorede","sousou","sugoi","wakaru"]
//    enum SelectedButtonTag: Int {
//        case unun
//        case hee
//        case doushite
//        case hontoni
//        case naruhodo
//        case sasuga
//        case sorede
//        case sousou
//        case sugoi
//        case wakaru
//    }

    @IBOutlet weak var volumeSlider: UISlider!
    @IBOutlet weak var volumeLevel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let button = UIButton()
                button.translatesAutoresizingMaskIntoConstraints = false
                view.addSubview(button)
        
        button.addTarget(self, action: #selector(self.buttonTapped(sender:)), for: .touchUpInside)
        
    }
    
    // ボタンをタップした時のアニメーション
    @IBAction func buttonTapped(sender:UIButton) {
        animateView(sender)
    }
    
    // ボタンをタップした時のアニメーションの動き
    func animateView(_ viewToAnimate:UIView) {
           UIView.animate(withDuration: 0.2, delay: 0, options: .curveEaseIn, animations: {
               viewToAnimate.transform = CGAffineTransform(scaleX: 1.08, y: 1.08)
           }) { (_) in
               UIView.animate(withDuration: 0.4, delay: 0, usingSpringWithDamping: 0.3, initialSpringVelocity: 10, options: .curveEaseOut, animations: {
                   viewToAnimate.transform = .identity
                   
               }, completion: nil)
           }
       }
    
    
    //　音量の調整スライド
    @IBAction func volumeChanged(_ sender: UISlider) {
        currentVolume = volumeSlider.value
        volumeLevel.text = "\(Int(currentVolume))"
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


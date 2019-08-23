//
//  ViewController.swift
//  sonidos
//
//  Created by Alumno on 21/08/19.
//  Copyright © 2019 Alumno. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var player : AVAudioPlayer?
    var playerMusicaFondo : AVAudioPlayer?
    
    var reproduccion = false
    
    let pathSonido = Bundle.main.path(forResource: "sonido.mp3", ofType: nil)
    let pathSans = Bundle.main.path(forResource: "tururut.mp3", ofType: nil)
    
    
    @IBAction func doTapSans(_ sender: Any) {
        if reproduccion {
            let urlSans = URL(fileURLWithPath: pathSans!)
            
            do {
                player = try AVAudioPlayer(contentsOf: urlSans)
            } catch {
                
            }
        }
        else {
            reproduccion = true
        }
        
        if player != nil {
            player?.play()
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let urlSonido = URL(fileURLWithPath: pathSonido!)
        
        do {
            player = try AVAudioPlayer(contentsOf: urlSonido)
        } catch {
            
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}


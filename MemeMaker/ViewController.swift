//
//  ViewController.swift
//  MemeMaker
//
//  Created by murad on 12/07/2019.
//  Copyright © 2019 murad. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var topCaptionSegmentedControl: UISegmentedControl!
    @IBOutlet var bottomCaptionSegmentedControl: UISegmentedControl!
    @IBOutlet var topCaptionLabel: UILabel!
    @IBOutlet var bottomCaptionLabel: UILabel!
    
    let topChoices = [CaptionOption(caption: "You know what's cool?", emoji: "🕶"),
                      CaptionOption(caption: "You know what makes me mad?", emoji: "💥"),
                      CaptionOption(caption: "YOu know what i love?", emoji: "💕")]
    
    let bottomChoices = [CaptionOption(caption: "Cats wearing hats", emoji: "🐱"),
                         CaptionOption(caption: "Dog carrying logs", emoji: "🐕"),
                         CaptionOption(caption: "Monkeys being funky", emoji: "🐒")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func segmentedControlsTapped(_ sender: UISegmentedControl) {
        
    }
    
}


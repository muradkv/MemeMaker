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
                      CaptionOption(caption: "You know what i love?", emoji: "💕")]
    
    let bottomChoices = [CaptionOption(caption: "Cats wearing hats", emoji: "🐱"),
                         CaptionOption(caption: "Dog carrying logs", emoji: "🐕"),
                         CaptionOption(caption: "Monkeys being funky", emoji: "🐒")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        setCaptionSegmentedControl()
        setCaptionLabels()
    }

    @IBAction func segmentedControlsTapped(_ sender: UISegmentedControl) {
        setCaptionLabels()
    }
    
    func setCaptionSegmentedControl() {
        topCaptionSegmentedControl.removeAllSegments()
        bottomCaptionSegmentedControl.removeAllSegments()
        
        for choice in topChoices {
            topCaptionSegmentedControl.insertSegment(withTitle: choice.emoji, at: topChoices.count, animated: false)
        }
        
        for choice in bottomChoices {
            bottomCaptionSegmentedControl.insertSegment(withTitle: choice.emoji, at: bottomChoices.count, animated: false)
        }
        
        topCaptionSegmentedControl.selectedSegmentIndex = 0
        bottomCaptionSegmentedControl.selectedSegmentIndex = 0
    }
    
    func setCaptionLabels() {
        let topText = topChoices[topCaptionSegmentedControl.selectedSegmentIndex]
        topCaptionLabel.text = topText.caption
        
        let bottomText = bottomChoices[bottomCaptionSegmentedControl.selectedSegmentIndex]
        bottomCaptionLabel.text = bottomText.caption
    }
    
}


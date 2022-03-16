//
//  ViewController.swift
//  SegmentedControl
//
//  Created by Tony on 16.03.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var segmetedControl: UISegmentedControl!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        label.isHidden = true
        label.font = label.font.withSize(35)
        //label.numberOfLines = 2 - лучше ставить в сториборд на 0, чтобы лэйбл растягивался
        
        segmetedControl.insertSegment(withTitle: "Third", at: 2, animated: true)
        
    }


    @IBAction func chooseSegmeted(_ sender: UISegmentedControl) {
        
        label.isHidden = false
        
        switch segmetedControl.selectedSegmentIndex {
        case 0:
            label.text = "The first degment is selected"
            label.textColor = .red
        case 1:
            label.text = "The second degment is selected"
            label.textColor = .blue
        case 2:
            label.text = "The second degment is selected"
            label.textColor = .yellow
        default:
            print("SMTH Wrong!!!!")
        }
    }
    
    
}


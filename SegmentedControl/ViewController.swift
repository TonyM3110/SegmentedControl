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
    @IBOutlet weak var slider: UISlider!
    @IBOutlet weak var textField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        slider.value = 1
        
        label.text = String(slider.value)
        label.font = label.font.withSize(35)
        //label.numberOfLines = 2 - лучше ставить в сториборд на 0, чтобы лэйбл растягивался
        
        segmetedControl.insertSegment(withTitle: "Third", at: 2, animated: true)
        
        //slider set up
        slider.minimumValue = 0
        slider.maximumValue = 1
        slider.minimumTrackTintColor = .yellow
        slider.maximumTrackTintColor = .red
        slider.thumbTintColor = .blue
        
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
    
    @IBAction func sliderAction(_ sender: UISlider) {
        
        label.text = String(sender.value)
        //прозрачность вью
        let backgoundColor = self.view.backgroundColor
        self.view.backgroundColor = backgoundColor?.withAlphaComponent(CGFloat(sender.value))
        
    }
    
    
    @IBAction func donePressed(_ sender: UIButton) {
        
        guard textField.text?.isEmpty == false else { return }
        
        if let _ = Double(textField.text!) {
            
            let alert = UIAlertController(title: "Wrong Name Format!", message: "Enter your name again, please", preferredStyle: .alert)
            let alertAction = UIAlertAction(title: "Ok", style: .default, handler: nil)
            
            alert.addAction(alertAction)
            
            present(alert, animated: true, completion: nil)
            
            print ("Name format is wrong")
        } else {
            label.text = textField.text
            // если формат неверный то очищает текст филд
            textField.text = nil
        }
        
        
        
    }
    
}


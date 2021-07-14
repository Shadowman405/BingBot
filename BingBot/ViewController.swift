//
//  ViewController.swift
//  BingBot
//
//  Created by Maxim Mitin on 1.07.21.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var showsLabel: UILabel!
    @IBOutlet weak var randomShowLabel: UILabel!
    @IBOutlet weak var bingBotSpokenLabel: UILabel!
    @IBOutlet weak var addShowTextField: UITextField!
    @IBOutlet weak var addShowBtn: UIButton!
    //stackViews
    @IBOutlet weak var randomShowStackView: UIStackView!
    @IBOutlet weak var addShowStackView: UIStackView!
    @IBOutlet weak var showsStackView: UIStackView!
    
    var shows: [String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        showsStackView.isHidden = true
        randomShowStackView.isHidden = true
    }
    
    func updateShowsLabel(){
        showsLabel.text = shows.joined(separator: ", ")
    }
    
    @IBAction func addShowBtnClicked(_ sender: Any) {
        guard let showName = addShowTextField.text else {return}
        shows.append(showName)
        updateShowsLabel()
        addShowTextField.text = ""
        showsStackView.isHidden = false
        
        if shows.count > 1 {
            randomShowStackView.isHidden = false
            bingBotSpokenLabel.isHidden = true
            randomShowLabel.isHidden = true
        }
    }
    
    @IBAction func randomBingeBtnClicked(_ sender: Any) {
        randomShowLabel.text = shows.randomElement()
        bingBotSpokenLabel.isHidden = false
        randomShowLabel.isHidden = false
    }

}


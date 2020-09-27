//
//  eventDescriptionViewController.swift
//  CustomLoginDemo
//
//  Created by PRABALJIT WALIA     on 26/09/20.
//  Copyright © 2020 Christopher Ching. All rights reserved.
//

import UIKit

class eventDescriptionViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        titleLabel.text = eventNames[myIndex]
        desc1Label.text = eventDetail1[myIndex]
        dateLabel.text = eventDate[myIndex]
        venueLabel.text = eventVenue[myIndex]
        timeLabel.text = eventTime[myIndex]
        feeLabel.text = eventFee[myIndex]
        derButton.isEnabled = false
        derButton.tintColor = .white

        // Do any additional setup after loading the view.
    }
    //MARK:-IBOutlets
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var desc1Label: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var venueLabel: UILabel!
    @IBOutlet weak var timeLabel: UILabel!
    @IBOutlet weak var feeLabel: UILabel!
    @IBOutlet weak var regButton: UIButton!
    @IBOutlet weak var derButton: UIButton!
    
    
    
}

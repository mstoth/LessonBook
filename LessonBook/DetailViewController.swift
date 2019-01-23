//
//  DetailViewController.swift
//  LessonBook
//
//  Created by Michael Toth on 1/21/19.
//  Copyright © 2019 Michael Toth. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var detailDescriptionLabel: UILabel!


    func configureView() {
        // Update the user interface for the detail item.
        if let detail = detailItem {
            if let label = detailDescriptionLabel {
                let fullName = detail.firstName! + " " + detail.lastName!
                if fullName == "New Student" {
                    label.text = NSLocalizedString("new-student", comment: "Comment")
                } else {
                    label.text = fullName
                }
            }
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        configureView()
    }

    var detailItem: Student? {
        didSet {
            // Update the view.
            configureView()
        }
    }


}


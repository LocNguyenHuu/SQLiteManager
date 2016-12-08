//
//  DetailViewController.swift
//  SQLiteDBProject
//
//  Created by Loc Nguyen on 12/7/16.
//  Copyright © 2016 Loc Nguyen. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

  @IBOutlet weak var detailDescriptionLabel: UILabel!
  @IBAction func createTable(_ sender: Any) {
  }

  @IBAction func createView(_ sender: Any) {
  }
  @IBAction func createIndex(_ sender: Any) {
  }
  @IBAction func createTrigger(_ sender: Any) {
  }
  @IBAction func createorOpenDatabase(_ sender: Any) {
  }
  
  
  @IBAction func executeQuery(_ sender: Any) {
  }
  
  func configureView() {
    // Update the user interface for the detail item.
    if let detail = self.detailItem {
        if let label = self.detailDescriptionLabel {
            label.text = detail.description
        }
    }
  }

  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
    self.configureView()
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }

  var detailItem: NSDate? {
    didSet {
        // Update the view.
        self.configureView()
    }
  }


}


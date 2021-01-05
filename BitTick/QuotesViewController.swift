//
//  QuotesViewController.swift
//  BitTick
//
//  Created by Radek Pachla on 05/01/2021.
//  Copyright © 2021 Radek Pachla. All rights reserved.
//

import Cocoa

class QuotesViewController: NSViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do view setup here.
    }
    


}

extension QuotesViewController {
  // MARK: Storyboard instantiation
  static func freshController() -> QuotesViewController {
    //1.
    let storyboard = NSStoryboard(name: NSStoryboard.Name("Main"), bundle: nil)
    //2.
    let identifier = NSStoryboard.SceneIdentifier("QuotesViewController")
    //3.
    guard let viewcontroller = storyboard.instantiateController(withIdentifier: identifier) as? QuotesViewController else {
      fatalError("Why cant i find QuotesViewController? - Check Main.storyboard")
    }
    return viewcontroller
  }
}


//
//  SecondViewController.swift
//  Test
//
//  Created by Zedd on 2020/06/25.
//  Copyright © 2020 Zedd. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    static func create(title: String) -> SecondViewController {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let viewController = storyboard.instantiateViewController(withIdentifier: "SecondViewController") as! SecondViewController
        viewController.title = title
        return viewController
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .gray
    }
}

extension SecondViewController {

    override func encodeRestorableState(with coder: NSCoder) {
        super.encodeRestorableState(with: coder)

        coder.encode(self.title, forKey: "title")
    }

    override func decodeRestorableState(with coder: NSCoder) {
        super.decodeRestorableState(with: coder)

        self.title = coder.decodeObject(forKey: "title") as? String
        self.title = title
    }

    override func applicationFinishedRestoringState() {
        print("\(type(of: self)) restoring ")
    }
}


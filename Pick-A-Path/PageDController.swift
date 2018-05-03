//
//  PageDController.swift
//  Pick-A-Path
//
//  Created by priscila costa on 2017-11-07.
//  Copyright © 2017 Algonquin College. All rights reserved.
//

import UIKit

class PageDController: UIViewController {
    //Outlets
    @IBOutlet weak var pageNumber: UINavigationItem!
    @IBOutlet weak var pageText: UITextView!
    @IBOutlet weak var pageTitle: UITextView!
    @IBOutlet weak var pageImage: UIImageView!
    
    //page to be shown
    var currentPage: Page? = Page()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    //Prepare page to be shown
    override func viewWillAppear(_ animated: Bool) {
        if let currentPage = self.currentPage {
            //All pages have a number, a title and a text
            pageNumber.title = "Page " + String(describing: currentPage.pageNumber)
            pageText.text = currentPage.pageText
            pageTitle.text = currentPage.pageTitle;
            
            //If page has image show
            if let pageImage = currentPage.pageImage {
                self.pageImage.image = UIImage(named: pageImage)
            }
        }
    }
    
    //Buttons Actions
    @IBAction func restartButton(_ sender: Any) {
        navigationController?.popToRootViewController(animated: true)
    }
    
}

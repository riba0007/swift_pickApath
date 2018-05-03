//
//  PageBController.swift
//  Pick-A-Path
//
//  Created by priscila costa on 2017-11-07.
//  Copyright © 2017 Algonquin College. All rights reserved.
//

import UIKit

class PageBController: UIViewController {
    //Outlets
    @IBOutlet weak var pageNumber: UINavigationItem!
    @IBOutlet weak var pageA: UIBarButtonItem!
    @IBOutlet weak var pageB: UIBarButtonItem!
    @IBOutlet weak var pageText: UITextView!
    @IBOutlet weak var pageOptions: UITextView!
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
            
            //If page has options (intructions to change page) show
            if let pageOptions = currentPage.pageTextOptions {
                self.pageOptions.text = pageOptions
            }
            
            //If page has image show
            if let pageImage = currentPage.pageImage {
                self.pageImage.image = UIImage(named: pageImage)
            }
            
            //If page has choices (next page) show
            if let pageChoiceA = currentPage.pageChoiceA {
                pageA.title = "Page " + String(describing: pageChoiceA.pageNumber)
            }
            if let pageChoiceB = currentPage.pageChoiceB {
                pageB.title = "Page " + String(describing: pageChoiceB.pageNumber)
            }
        }
    }
    
    //Select the page to be passed to the next Controller
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        //get next controller
        let destinationController = segue.destination as? PageCController
        
        //check which page to pass
        if sender as! String == "buttonA" {
            destinationController?.currentPage = self.currentPage?.pageChoiceA
        } else if sender as! String == "buttonB" {
            destinationController?.currentPage = self.currentPage?.pageChoiceB
        }
    }
    
    //Buttons Actions
    @IBAction func pageButtonA(_ sender: Any) {
        performSegue(withIdentifier: "showPageC", sender: "buttonA")
    }
    @IBAction func pageButtonB(_ sender: Any) {
        performSegue(withIdentifier: "showPageC", sender: "buttonB")
    }
    

}

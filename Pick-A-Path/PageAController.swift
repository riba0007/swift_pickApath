//
//  PageAController.swift
//  Pick-A-Path
//
//  Created by priscila costa on 2017-11-07.
//  Copyright © 2017 Algonquin College. All rights reserved.
//

import UIKit

class PageAController: UIViewController {
    //Outlets
    @IBOutlet weak var pageNumber: UINavigationItem!
    @IBOutlet weak var pageA: UIBarButtonItem!
    @IBOutlet weak var pageB: UIBarButtonItem!
    @IBOutlet weak var pageText: UITextView!
    @IBOutlet weak var pageOptions: UITextView!
    @IBOutlet weak var pageTitle: UITextView!
    @IBOutlet weak var pageImage: UIImageView!
    
    //Page nodes
    var page1: Page? = Page()
    var page2: Page? = Page()
    var page3: Page? = Page()
    var page4: Page? = Page()
    var page5: Page? = Page()
    var page6: Page? = Page()
    var page7: Page? = Page()
    var page8: Page? = Page()
    var page9: Page? = Page()
    var page10: Page? = Page()
    var page11: Page? = Page()
    var page12: Page? = Page()
    var page13: Page? = Page()
    var page14: Page? = Page()
    var page15: Page? = Page()
    
    //page to be shown
    var currentPage: Page? = Page()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // initializing all page nodes
        page1?.pageNumber = 1
        page1?.pageTitle = "The Story Begins"
        page1?.pageImage = "image-page1"
        page1?.pageText = "\tYou open your canvas calendar and notice a new iOS assignment due two weeks from now. iOS is not that difficult and you have a plenty of time to do it.\nYou decide to…"
        page1?.pageTextOptions = "*\tOpen the assignment and check what it is about anyway.\n(Go to page 2)\n\n*\tWatch Stranger Things….Two weeks is a long time, you can check it later.\n(Go to page 3)"
        
        page2?.pageNumber = 2
        page2?.pageTitle = "A Tough Decision"
        page2?.pageImage = "image-page2"
        page2?.pageText = "\tYou notice that the assignment is not difficult but it may be a little of work. You don’t see any other assignments between now and the due date.\nYou…"
        page2?.pageTextOptions = "*\tStart the assignment right away. You have time now and  who knows what other assignments will come overnight\n(Go to page 4)\n\n*\tDecide to check it back in one week. You are pretty sure you will have enough time.\n(Go to page 5)"
        
        page3?.pageNumber = 3
        page3?.pageTitle = "The Next Week"
        page3?.pageImage = "image-page3"
        page3?.pageText = "One week has passed, you check the canvas calendar again. There is a new Android assignment due to next week and it looks to be more difficult.\nYou decide to…"
        page3?.pageTextOptions = "*\tStart the iOS assignment, so you can get rid of it before start the other assignment.\n(Go to page 6)\n\n*\tStart Android assignment. Honestly, iOS is easy, you finish this one very fast.\n(Go to page 7)"
        
        page4?.pageNumber = 4
        page4?.pageTitle = "All Done"
        page4?.pageImage = "image-page4"
        page4?.pageText = "You finish the assignment in one week. It wasn’t difficult at all, but you took your time exploring the tool and trying to do some extra stuff. You still have another full week to submit the assignment.\nYou…"
        page4?.pageTextOptions = "*\tSubmit the assignment right away. You finished it already, there’s no need to wait\n(Go to page 8)\n\n*\tWait a few more days to submit it. Maybe the professor say something important for the assignment next week.\n(Go to page 9)"
        
        page5?.pageNumber = 5
        page5?.pageTitle = "The Next Week"
        page5?.pageImage = "image-page5"
        page5?.pageText = "One week has passed, you check the canvas calendar again. There are tons of new assignments. Are the professors crazy? You will never have time to finish everything.\nYou…"
        page5?.pageTextOptions = "*\tStart the assignments right away. A few days without sleep will solve the problem. At least you hope so…\n(Go to page 14)\n\n*\tPanic. You are so anxious that you can’t start any of them. You go watch Stranger Things to calm yourself a little bit.\n(Go to page 15)"
        
        page6?.pageNumber = 6
        page6?.pageTitle = "Whoops!"
        page6?.pageImage = "image-page6"
        page6?.pageText = "The iOS assignment is more difficult than you thought. You will need some extra time to finish it, but you also have that problematic Android assignment to do. Your iOS grade is better than your Android’s one. \nYou…"
        page6?.pageTextOptions = "*\tDecide to focus on that Android’s assignment now and come back to this one later.\n(Go to page 10)\n\n*\tFinish the iOS assignment as fast as you can so you can start the other one. “Will I have enough time?”\n(Go to page 11)"
        
        page7?.pageNumber = 7
        page7?.pageTitle = "Whoops!"
        page7?.pageImage = "image-page7"
        page7?.pageText = "The Android assignment is more difficult than you thought. You will need some extra time to finish it, but you also have that iOS assignment to do. Your iOS grade is better than your Android’s one.\nYou…"
        page7?.pageTextOptions = "*\tFinish Android’s assignment first. You know iOS is easy and you can finish it in one night.\n(Go to page 12)\n\n*\tDecide to change to iOS and finish Android later.\n(Go to page 13)"
        
        page8?.pageNumber = 8
        page8?.pageTitle = "The A+ Hunter"
        page8?.pageImage = "image-page8"
        page8?.pageText = "Almost a month has passed, the professor finally release the grades: 8 out of 10. Your code is different from what the professor taught.\n\nCome on, it does the same thing….what a picky person."
        
        page9?.pageNumber = 9
        page9?.pageTitle = "The Nerd"
        page9?.pageImage = "image-page9"
        page9?.pageText = "The professor passed some more details about the assignment on the following week and you notice that your code was a bit different.\n\nYou change the code and submit the assignment. Almost a month has passed, the professor finally release the grades: 10 out of 10.\n\nYou are happy, but everybody sees you as “the nerd”."
        
        page10?.pageNumber = 10
        page10?.pageTitle = "The Begging Guy"
        page10?.pageImage = "image-page10"
        page10?.pageText = "You spent almost all your time with the Android assignment. You ask for an extension, the professor denies. You ask your friends for help, but they are busy finishing their Android assignments.\n\nYou submit what you have even if it is not complete. Almost a month has passed, the professor finally release the grades: 4 out of 10.\n\nBetter luck with the finals…"
        
        page11?.pageNumber = 11
        page11?.pageTitle = "The Hurried"
        page11?.pageImage = "image-page11"
        page11?.pageText = "Almost a month has passed, the professor finally release the grades: 6 out of 10. In your hurry you forgot to read the assignment’s description and lost many details.\n\nAt least you still have enough marks to pass the year."
        
        page12?.pageNumber = 12
        page12?.pageTitle = "The Frustrated"
        page12?.pageImage = "image-page12"
        page12?.pageText = "You didn’t notice that “Customize your application” part when you first read the assignment’s description and now you don’t have enough time to do it. You submit your assignment the way it is and wait for your mark.\n\nAlmost a month has passed, the professor finally release the grades: 7 out of 10. You know you are better than that but you didn’t pay attention to the details and now your perfect marks are maculated.\n\nYou are so frustrated."
        
        page13?.pageNumber = 13
        page13?.pageTitle = "The Satisfied"
        page13?.pageImage = "image-page13"
        page13?.pageText = "You didn’t notice that “Customize your application” part when you first read the assignment’s description and spend much more time than expected. You don’t sleep for two nights and managed to finish both assignments.\n\nAlmost a month has passed, the professor finally release the grades: 9 out of 10. You were so tired that forgot the stupid comments.\n\nNo problem, you still have an A+."
        
        page14?.pageNumber = 14
        page14?.pageTitle = "The Not Care Guy"
        page14?.pageImage = "image-page14"
        page14?.pageText = "You were so sleep that you didn't notice that “Customize your application” part before submitting the assignment.\n\nAlmost a month has passed, the professor finally release the grades: 5 out of 10. Apparently you forgot more things, but it is ok, you still have enough to pass the year.\n\nYou go watch Netflix."
        
        page15?.pageNumber = 15
        page15?.pageTitle = "The Failed"
        page15?.pageImage = "image-page15"
        page15?.pageText = "You don’t have enough time to do the assignment. You ask for an extension, the professor denies. You ask your friends for help, but they are busy finishing their own assignments. You have no option but skip this one.\n\nAlmost a month has passed, the professor finally release the grades: 0 out of 10.\n\nWere you expecting something different?"
        
        //creating connections between the page nodes
        page1?.pageChoiceA = page2
        page1?.pageChoiceB = page3
        
        page2?.pageChoiceA = page4
        page2?.pageChoiceB = page5
        
        page3?.pageChoiceA = page6
        page3?.pageChoiceB = page7
        
        page4?.pageChoiceA = page8
        page4?.pageChoiceB = page9
        
        page5?.pageChoiceA = page14
        page5?.pageChoiceB = page15
        
        page6?.pageChoiceA = page10
        page6?.pageChoiceB = page11
        
        page7?.pageChoiceA = page12
        page7?.pageChoiceB = page13
        
        //set current page to 1
        currentPage = page1
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
        let destinationController = segue.destination as? PageBController
        
        //check which page to pass
        if sender as! String == "buttonA" {
            destinationController?.currentPage = self.currentPage?.pageChoiceA
        } else if sender as! String == "buttonB" {
            destinationController?.currentPage = self.currentPage?.pageChoiceB
        }
    }

    //Buttons Actions    
    @IBAction func pageButtonA(_ sender: Any) {
        performSegue(withIdentifier: "showPageB" , sender: "buttonA")
    }
    @IBAction func pageButtonB(_ sender: Any) {
        performSegue(withIdentifier: "showPageB" , sender: "buttonB")
    }
    
}

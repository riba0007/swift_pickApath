//
//  Page.swift
//  Pick-A-Path Interactive Story
//
//  Created by priscila costa on 2017-11-07.
//  Copyright © 2017 Algonquin College. All rights reserved.
//

import Foundation

//Page node object
class Page {
    //Page properties
    var pageNumber: Int
    var pageText: String
    var pageTextOptions: String?
    var pageTitle: String
    var pageChoiceA: Page?
    var pageChoiceB: Page?
    var pageImage: String?
    
    //default constructor. All pages must have a number, a title and a text.
    init() {
        pageNumber = 1
        pageTitle = "Once upon a time..."
        pageText = ""
    }
}


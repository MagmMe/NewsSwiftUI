//
//  Article.swift
//  News
//
//  Created by Marcin Magiera on 14/04/2020.
//  Copyright © 2020 Magme Agency. All rights reserved.
//

import Foundation

struct Article {
    var title:String
    var author:String
    var url:String
    
    var urlRequest:URLRequest {
        URLRequest(url: URL(string: url)!)
    }

}


    





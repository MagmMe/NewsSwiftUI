//
//  ArticleList.swift
//  News
//
//  Created by Marcin Magiera on 07/05/2020.
//  Copyright © 2020 Magme Agency. All rights reserved.
//

import SwiftUI

let articles = [
    Article(title: "Neil Armstrong Becomes First Human to Walk On the Moon", author: "The Washington Post", url: "https://learnappmaking.com/ex/lipsum.html"),
    Article(title: "Wilbur and Orville Wright Fly the First Powered Airplane", author: "New York Times", url: "https://learnappmaking.com/ex/lipsum.html"),
    Article(title: "\"Unsinkable\" Titanic, Largest Man-Made Structure Sinks", author: "The Wall Street Journal", url: "https://learnappmaking.com/ex/lipsum.html"),
    Article(title: "Henry Ford Organizes First Major Assembly Line To Make Model T Cars", author: "New York Post", url: "https://learnappmaking.com/ex/lipsum.html"),
    Article(title: "World Wide Web Revolutionizes the Internet", author: "USA Today", url: "https://learnappmaking.com/ex/lipsum.html"),
    Article(title: "Charles Lindbergh Crosses the Atlantic In First Solo Flight", author: "Star Tribune", url: "https://learnappmaking.com/ex/lipsum.html"),
    Article(title: "Babe Ruth Hits 60 Home Runs; a Single Season Record That Would Last 34 Years", author: "Los Angeles Times", url: "https://learnappmaking.com/ex/lipsum.html"),
    Article(title: "'ENIAC' Becomes World's First Computer", author: "Boston Globe", url: "https://learnappmaking.com/ex/lipsum.html"),
    Article(title: "Apple Introduces The New iPhone", author: "Chicago Tribune", url: "https://learnappmaking.com/ex/lipsum.html")
]
 
struct ArticleList: View {
    var body: some View {
        NavigationView{
            List(articles, id: \.title){ article in
                NavigationLink(destination: ArticleDetail(article:article)){
                    ArticleRow(article: article)
                }
            }
        .navigationBarTitle(Text("Fakty Oświęcim"))
        }
    }
}

struct ArticleList_Previews: PreviewProvider {
    static var previews: some View {
        ArticleList()
    }
}

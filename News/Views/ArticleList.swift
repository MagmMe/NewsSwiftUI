//
//  ArticleList.swift
//  News
//
//  Created by Marcin Magiera on 07/05/2020.
//  Copyright © 2020 Magme Agency. All rights reserved.
//

import SwiftUI

let articles = [
    Article(title: "Jak uzyskać zachowek, mimo skutecznego wydziedziczenia spadkobiercy?", author: "Fakty Oświęcim", url: "https://learnappmaking.com/ex/lipsum.html"),
    Article(title: "KORONAWIRUS – RAPORT DZIENNY – 11 MAJA", author: "Redakcjas", url: "https://learnappmaking.com/ex/lipsum.html"),
    Article(title: "Nakręćmy się dla Nikolki, czyli podaruj nakrętki chorej dziewczynce", author: "TRedakcja", url: "https://learnappmaking.com/ex/lipsum.html"),
    Article(title: "Innowacyjna szkoła z niepowtarzalną atmosferą – FOTO", author: "Redakcja", url: "https://learnappmaking.com/ex/lipsum.html"),
    Article(title: "World Wide Web Revolutionizes the Internet", author: "Redakcja", url: "https://learnappmaking.com/ex/lipsum.html"),
    Article(title: "Perfumy prosto z wybiegu? Linie kosmetyków wielkich domów mody", author: "Redakcja", url: "https://learnappmaking.com/ex/lipsum.html"),
    Article(title: "800 litrów nakrętek dla Nikolki – FOTO", author: "Redakcja", url: "https://learnappmaking.com/ex/lipsum.html"),
    Article(title: "Podbijają sportowcy, amatorzy, politycy i dyrektorzy szkół – FILMY", author: "Redakcja", url: "https://learnappmaking.com/ex/lipsum.html"),
    Article(title: "18 maja zjemy posiłek w ogródkach restauracyjnych?", author: "Redakcja", url: "https://learnappmaking.com/ex/lipsum.html")
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

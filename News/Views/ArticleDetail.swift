//
//  ArticleDetail.swift
//  News
//
//  Created by Marcin Magiera on 09/05/2020.
//  Copyright © 2020 Magme Agency. All rights reserved.
//

import SwiftUI


struct ArticleDetail: View {
    
    var article: Article
    
    var body: some View {
        VStack(alignment: .leading){
            Image("example")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(height:200)
                .clipped()
            Text(article.title)
                .font(.headline)
                .padding(EdgeInsets(top: 10, leading: 15, bottom: 0, trailing: 10))
            Text(article.author)
                .font(.subheadline)
                .padding(EdgeInsets(top: 10, leading: 15, bottom: 0, trailing: 10))
            WebView(request: article.urlRequest)
        }
        .navigationBarTitle(Text(article.title), displayMode: .inline)
    }
}

struct ArticleDetail_Previews: PreviewProvider {
    static var previews: some View {
        ArticleDetail(article: articles[0])
    }
}

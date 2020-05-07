//
//  ArticleRow.swift
//  News
//
//  Created by Marcin Magiera on 17/04/2020.
//  Copyright © 2020 Magme Agency. All rights reserved.
//

import SwiftUI

struct ArticleRow: View{
    var body: some View{
        VStack(alignment: .leading){
            Text("Man on the moon")
                .font(.headline)
                .lineLimit(3)
                .padding(EdgeInsets(top: 5, leading: 5, bottom: 0, trailing: 5))
            Text("by Daily Mirror")
                .font(.subheadline)
                .foregroundColor(.gray)
                .padding(EdgeInsets(top:0, leading: 5, bottom: 0, trailing: 5 ))
        }
    }
}



struct ArticleRow_Previews: PreviewProvider {
    static var previews: some View {
        ArticleRow()
    }
}

//
//  TabView-MultiplePages.swift
//  LessonApp
//
//  Created by Krzysztof  Sajdak  on 10/08/2020.
//  Copyright © 2020 Krzysztof  Sajdak . All rights reserved.
//

import SwiftUI

struct TabView_MultiplePages: View {
    
    var body: some View {
        TabView {
                NameList()
                    .tabItem{
                        VStack {
                            Image(systemName: "square.and.pencil")
                            Text("edit")
                        }
                }
            NameList()
                .tabItem{
                    VStack {
                        Image(systemName: "plus.square")}
                        Text("add product")
            }
            NameList()
                .tabItem{
                    VStack {
                        Image(systemName: "book")
                        Text("history")
                    }
            }
        }
    }
}

//struct TabView_MultiplePages_Previews: PreviewProvider {
//    static var previews: some View {
//        TabView_MultiplePages()
//    }
//}

//
//  NameList.swift
//  LessonApp
//
//  Created by Krzysztof  Sajdak  on 10/08/2020.
//  Copyright © 2020 Krzysztof  Sajdak . All rights reserved.
//

import SwiftUI
import UIKit
import Foundation
struct NameList: View {
    
    var names: [String] = [
        "Krzysiek",
        "Magda",
        "Kacper",
        "Nicholas",
        "Krzysiek",
        "Magda",
        "Kacper",
        "Nicholas",
        "Krzysiek",
        "Magda",
        "Kacper",
        "Nicholas"]
    
    var body: some View {
        NavigationView {
            List(0..<names.count) {
                index in
                NavigationLink(destination: NameListHistory()) {
                    HStack {
                        Circle()
                            .frame(width: 12, height: 12)
                            .foregroundColor(.red)
                        VStack (alignment: .leading) {
                            Text(self.names[index])
                                .font(.system(size: 20, weight: .bold, design: .default))
                            Text("system...")
                                .font(.system(size: 14, weight: .medium, design: .default))
                                .italic()
                            Text("system..")
                                .font(.system(size: 14, weight: .medium, design: .default))
                                .italic()
                        }
                    }
                }
            }.navigationBarTitle("Names", displayMode: .automatic)
                .navigationBarItems(trailing: Button("Log Out"){})
        }
    }
}

//struct NameList_Previews: PreviewProvider {
//    static var previews: some View {
//        NameList()
//    }
//}

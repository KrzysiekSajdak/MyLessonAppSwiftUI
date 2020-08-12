//
//  Grid-Stack.swift
//  LessonApp
//
//  Created by Krzysztof  Sajdak  on 12/08/2020.
//  Copyright © 2020 Krzysztof  Sajdak . All rights reserved.
//

import SwiftUI

struct GridStack <Content: View>: View {
    
    let rows: Int
    let columns: Int
    let content: (Int, Int) -> Content
    
    var body: some View {
        VStack {
            ForEach(0 ..< rows) {
                row in
                HStack {
                    ForEach (0 ..< self.columns) {
                        column in
                        self.content(row, column)
                    }
                }
            }
        }
    }
    
    init(rows: Int, columns: Int, @ViewBuilder content: @escaping (Int, Int) -> Content) {
        self.rows = rows
        self.columns = columns
        self.content = content
    }
}

struct Grid_Stack: View {
    
    var body: some View {
// version without initializer
        
//        GridStack(rows: 2, columns: 5) { row, column in
//            HStack {
//                Text("R\(row) C\(column)")
//                    .frame(width: 60, height: 60)
//            }
//        }
        GridStack(rows: 4, columns: 4) {
            row, column in
            Image(systemName: "\(row * 4  + column).circle")
                .font(.system(size: 30))
                .frame(width: 60, height: 60)
        }
    }
}

struct Grid_Stack_Previews: PreviewProvider {
    static var previews: some View {
        Grid_Stack()
    }
}

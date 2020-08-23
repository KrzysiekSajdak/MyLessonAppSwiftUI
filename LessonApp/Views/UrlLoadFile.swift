//
//  UrlLoadFile.swift
//  LessonApp
//
//  Created by Krzysztof  Sajdak  on 21/08/2020.
//  Copyright © 2020 Krzysztof  Sajdak . All rights reserved.
//

import SwiftUI

struct UrlLoadFile: View {
    var body: some View {
        if let fileURL = Bundle.main.url(forResource: "some-file", withExtension: "txt") {
            //
            if let fileContents = try?
                String(contentsOf: fileURL) {
                
            }
        }
        return Text("Hello")
    }
}

struct UrlLoadFile_Previews: PreviewProvider {
    static var previews: some View {
        UrlLoadFile()
    }
}

//
//  ContentView.swift
//  Boundary2
//
//  Created by Admin on 1.09.22.
//

import SwiftUI

struct ContentView: View {
    @State var text = ""

    var body: some View {
        Text(text)
            .frame(minWidth: 500, minHeight: 300)
            .toolbar {
                ToolbarItem(placement: .automatic) {
                    Button {
                        text = BashBox.shared.shell("/usr/libexec/java_home -V")
                    } label: {
                        Image(nsImage: NSImage(named: "Java")!)
                            .resizable()
                            .frame(width: 20, height: 20)
                            .scaledToFit()
                    }
                }
            }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

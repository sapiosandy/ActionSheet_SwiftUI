//
//  ContentView.swift
//  ActionSheet_SwiftUI
//
//  Created by Sandra Gomez on 2/24/24.
//

import SwiftUI

struct ContentView: View {
    
    @State private var showAction = false
    
    var body: some View {
        VStack {
            Button(action: {showAction.toggle()
            }) {
                Text("Show Action Sheet")
            }
            .actionSheet(isPresented: $showAction) { () -> ActionSheet in
                ActionSheet(title: Text("Warning"), message: Text("Do you really want to delete this message?"))
            }
        }
    }
}

#Preview {
    ContentView()
}

//
//  ContentView.swift
//  ContactListSwiftUI
//
//  Created by Алексей on 23.09.2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            FirstContactListView()
                .tabItem {
                    Image(systemName: "person.3.fill")
                    Text("Contacts")
                }
            SecondContactListView()
                .tabItem {
                    Image(systemName: "phone.fill")
                    Text("Numbers")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

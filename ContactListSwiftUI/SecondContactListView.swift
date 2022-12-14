//
//  SecondContactListView.swift
//  ContactListSwiftUI
//
//  Created by Алексей on 23.09.2022.
//

import SwiftUI

struct SecondContactListView: View {
    
    let contacts: [Person]
    
    var body: some View {
        NavigationStack {
            List(contacts, id: \.self) { contact in
                Section {
                    HStack {
                        Label(contact.number, systemImage: "phone")
                    }
                    HStack {
                        Label(contact.email, systemImage: "tray")
                    }
                } header: {
                    Text(contact.fullName)
                        .bold()
                }
            }
            .navigationTitle("Contact List")
        }
    }
    
    struct SecondContactListView_Previews: PreviewProvider {
        static var previews: some View {
            SecondContactListView(contacts: Person.getContacts())
        }
    }
}


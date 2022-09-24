//
//  FirstContactListView.swift
//  ContactListSwiftUI
//
//  Created by Алексей on 23.09.2022.
//

import SwiftUI

struct FirstContactListView: View {
    
    let contacts: [Person]
    
    var body: some View {
        
        NavigationStack {
            List(contacts, id: \.self) { contact in
                NavigationLink(destination: ContactDetailsView(contact: contact)) {
                    Text("\(contact.fullName)")
                }
            }
            .navigationTitle("Contact List")
            .listStyle(.plain)
        }
    }
}


struct FirstContactListView_Previews: PreviewProvider {
    static var previews: some View {
        FirstContactListView(contacts: Person.getContacts())
    }
}

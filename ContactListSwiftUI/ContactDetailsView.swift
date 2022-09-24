//
//  ContactDetailsView.swift
//  ContactListSwiftUI
//
//  Created by Алексей on 23.09.2022.
//

import SwiftUI

struct ContactDetailsView: View {
    
    let contact: Person
    
    var body: some View {
        List {
            HStack {
                Spacer()
                Image(systemName: "person.fill")
                    .resizable()
                    .frame(width: 150, height: 150)
                Spacer()
            }
            HStack {
                Image(systemName: "phone")
                    .foregroundColor(.blue)
                Text(contact.number)
            }
            HStack {
                Image(systemName: "tray")
                    .foregroundColor(.blue)
                Text(contact.email)
            }
        }
            .navigationTitle(Text("\(contact.fullName)"))
            .listStyle(.plain)
    }
}


struct ContactView_Previews: PreviewProvider {
    static var previews: some View {
        ContactDetailsView(contact: Person.getContact())
    }
}

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
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct ContactView_Previews: PreviewProvider {
    static var previews: some View {
        ContactDetailsView(contact: Person(name: "123", surname: "123", email: "123", number: "123"))
    }
}

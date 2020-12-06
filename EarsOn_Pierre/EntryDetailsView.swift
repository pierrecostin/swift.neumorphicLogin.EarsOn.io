//
//  EntryDetailsView.swift
//  EarsOn_Pierre
//
//  Created by PIERRE COSTIN on 2020-11-05.
//

import SwiftUI

struct EntryDetailsView: View {
    
    @Binding var user : String
    @Binding var pass : String
    
    var body: some View {
        HStack(spacing :15){
            
            Image(systemName: "envelope.fill")
                .foregroundColor(.gray)
            
            TextField("Email", text: self.$user)
        }
        .modifier(TFModifier())
        
        HStack(spacing: 15){
            
            Image(systemName: "lock.fill")
                .foregroundColor(.gray)
            
            SecureField("Password", text: self.$pass)
            
            Button(action: {
                
            }) {
                
                Image(systemName: "eye.slash.fill")
                    .foregroundColor(.gray)
            }
            
        }
        .modifier(TFModifier())
    }
}

struct EntryDetailsView_Previews: PreviewProvider {
    
    @State static var user = "user"
    @State static var pass = "pass"
    static var previews: some View {
        EntryDetailsView(user: $user, pass: $pass).previewLayout(.sizeThatFits)
    }
}

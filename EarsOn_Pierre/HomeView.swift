//
//  HomeView.swift
//  EarsOn_Pierre
//
//  Created by PIERRE COSTIN on 2020-11-05.
//

import SwiftUI


struct ContentView: View {
    
    var body: some View {
        Home()
    }
}

struct ContentView_Previews:
    PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


struct Home : View {
    
    @State var user = ""
    @State var pass = ""

    
    var body: some View{
        
        ZStack{
            
            Color("Color").edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            
            VStack(spacing: 25){
                
                VStack(spacing: 18){
                    Image("earsLogo")
                    Image("earsName")
                }
                .padding(20)
                .modifier(TopModifier())
                .padding(.bottom, 20)
                
                EntryDetailsView(user: $user, pass: $pass)
                
                Button(action: {
                    
                }) {
                    
                    Text("Login")
                        .foregroundColor(Color.black.opacity(0.7))
                        .padding(.vertical)
                        .frame(width: UIScreen.main.bounds.width - 150)
                }
                .buttonStyle(ButtonModifier())
                
                Text("Or")
                    .foregroundColor(.gray)
                
                HStack(spacing: 25){
                    
                    Button(action: {
                        
                    }) {
                    
                    Image("instagram")
                        .renderingMode(.original)
                        .padding(20)
                    }
                    .buttonStyle(OtherModifier())
                    
                    Button(action: {
                        
                    }) {
                    
                    Image("twitter")
                        .renderingMode(.original)
                        .padding(20)
                    }
                    .buttonStyle(OtherModifier())
                }
                .padding(20)
            }
            .padding(.horizontal, 30)
        }
    }
}

struct TopModifier : ViewModifier {
    
    func body(content: Content) -> some View {
        
        content.background(Color("Color"))
            .cornerRadius(15)
            .shadow(color: Color.black.opacity(0.2), radius: 6, x: 10, y: -0)
            .shadow(color: Color.white.opacity(0.5), radius: 6, x: -8, y: -8)
    }
}

struct TFModifier : ViewModifier {
    
    func body(content: Content) -> some View {
        
        content.padding(20)
            .background(Color("Color"))
            .cornerRadius(15)
            .overlay(
                RoundedRectangle(cornerRadius: 15)
                    .stroke(Color.black.opacity(0.05), lineWidth: 4)
                    .shadow(color: Color.black.opacity(0.2), radius: 3, x: 5, y: 5)
                    .clipShape(RoundedRectangle(cornerRadius: 15))
                    .shadow(color: Color.black.opacity(0.2), radius: 3, x: -5, y: -5)
                    .clipShape(RoundedRectangle(cornerRadius: 15))
            )
    }
}

struct ButtonModifier : ButtonStyle {
    
    func makeBody(configuration: Configuration) -> some View {
        
        configuration.label
            .background(Color("Color"))
            .cornerRadius(15)
            .overlay(
                
                VStack {
                    
                    if configuration.isPressed{
                        RoundedRectangle(cornerRadius: 15)
                            .stroke(Color.black.opacity(0.05), lineWidth: 4)
                            .shadow(color: Color.black.opacity(0.2), radius: 3, x: 5, y: 5)
                            .clipShape(RoundedRectangle(cornerRadius: 15))
                            .shadow(color: Color.black.opacity(0.2), radius: 3, x: -5, y: -5)
                            .clipShape(RoundedRectangle(cornerRadius: 15))
                        
                    }
                    
                }
            )
            .shadow(color: Color.black.opacity(configuration.isPressed ? 0 : 0.2),
                    radius: 5, x: 5, y: 5)
            .shadow(color: Color.white.opacity(configuration.isPressed ? 0 : 0.2),
                    radius: 5, x: 5, y: 5)
    }
}

struct OtherModifier : ButtonStyle {
    
    func makeBody(configuration: Configuration) -> some View {
        
        configuration.label
            .background(Color("Color"))
            .clipShape(Circle())
            .overlay(
                
                VStack {
                    
                    if configuration.isPressed{
                      Circle()
                            .stroke(Color.black.opacity(0.05), lineWidth: 4)
                            .shadow(color: Color.black.opacity(0.2), radius: 3, x: 5, y: 5)
                            .clipShape(Circle())
                            .shadow(color: Color.black.opacity(0.2), radius: 3, x: -5, y: -5)
                            .clipShape(Circle())
                    }
                    
                }
            )
            .shadow(color: Color.black.opacity(configuration.isPressed ? 0 : 0.2),
                    radius: 5, x: 5, y: 5)
            .shadow(color: Color.white.opacity(configuration.isPressed ? 0 : 0.6),
                    radius: 5, x: -5, y: -5)
    }
}







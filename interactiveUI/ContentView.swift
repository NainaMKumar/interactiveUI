//
//  ContentView.swift
//  interactiveUI
//
//  Created by scholar on 7/26/23.
//

import SwiftUI

struct ContentView: View {
    @State private var name = ""
    @State private var textTitle = "What is your name?"
    var body: some View {
        
        NavigationStack{
            VStack (spacing:75.0){
                Text("Welcome to Reminders!")
                    .font(.title)
                TextField("type name here...", text: $name)
                    .multilineTextAlignment(.center)
                    .font(.title)
                    .border(Color.gray, width:1)
                
                NavigationLink(destination: SecondView()) {
                    Text("Submit")
                }
                
                .font(.title)
                .buttonStyle(.borderedProminent)
                .tint(.red)
                .cornerRadius(20)
                
                DatePicker(selection: /*@START_MENU_TOKEN@*/.constant(Date())/*@END_MENU_TOKEN@*/, displayedComponents: .date, label: { /*@START_MENU_TOKEN@*/Text("Date")/*@END_MENU_TOKEN@*/ })
                
            }
            .padding()
            
        }
    }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
}

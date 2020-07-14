//
//  ContentView.swift
//  FahadCard
//
//  Created by Fahad Tariq on 13/07/2020.
//  Copyright © 2020 Fahad Tariq. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            
            Color(red: 0.09, green: 0.63, blue: 0.52, opacity: 1.0)
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            VStack {
                 
                    Image("Fahad Tariq")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 180, height: 180)
                        .clipShape(Circle())
                        .overlay(
                            Circle().stroke(Color.white,lineWidth: 5)
                        )
                    
                    Text("Fahad Tariq")
                        .font(Font.custom("Pacifico-Regular", size: 40))
                        .bold()
                        .foregroundColor(.white)
                
                Text("iOS Developer")
                    .foregroundColor(.white)
                    .font(.system(size: 25))
                    Divider()
                InfoView()
                
                
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().previewDevice(PreviewDevice(rawValue: "iPhone Xs Max"))
    }
}

struct InfoView: View {
    
    
    
    var body: some View {
        RoundedRectangle(cornerRadius: 30)
            .frame(height: 50)
            .foregroundColor(.white)
            .overlay(
                HStack {
                    Image(systemName: "phone.fill")
                        .foregroundColor(.green)
                    Text("+923214054291").bold()
                    
            })
            .padding(.all)
        
    }
    
}

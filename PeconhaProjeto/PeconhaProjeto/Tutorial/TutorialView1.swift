//
//  TutorialView1.swift
//  PeconhaProjeto
//
//  Created by Turma01-23 on 10/11/25.
//

import SwiftUI

struct TutorialView1: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
        ZStack{
            let blueBG = LinearGradient(stops: [.init(color: .camoGreen  .opacity(0.7), location: 0.00), .init(color: .white, location: 0.7)], startPoint: .bottomLeading, endPoint: .topLeading)
                .ignoresSafeArea()
            blueBG
            VStack{
                Spacer()
                HStack{
                    NavigationLink(destination: ContentView()) {
                        Text("< Retornar")
                            .font(.system(size: 20))
                            .foregroundStyle(.white)
                            .padding()
                            .navigationBarBackButtonHidden(true)
                    }
                    Spacer()
                    NavigationLink(destination: TutorialView2()) {
                        Text("Prosseguir >")
                            .font(.system(size: 20))
                            .foregroundStyle(.purple)
                            .padding()
                            .navigationBarBackButtonHidden(true)
                    }
                }
            }
        }
    }
}

#Preview {
    TutorialView1()
}

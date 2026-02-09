//
//  TutorialView3.swift
//  PeconhaProjeto
//
//  Created by Turma01-23 on 10/11/25.
//

import SwiftUI

struct TutorialView3: View {
    var body: some View {
        Text("Hello, World 3")
        ZStack{
            let blueBG = LinearGradient(stops: [.init(color: .camoGreen  .opacity(0.6), location: 0.00), .init(color: .white, location: 0.7)], startPoint: .bottomLeading, endPoint: .topLeading)
                .ignoresSafeArea()
            blueBG
            VStack{
                Spacer()
                HStack{
                    NavigationLink(destination: TutorialView2()) {
                        Text("< Retornar")
                            .font(.system(size: 20))
                            .foregroundStyle(.white)
                            .padding()
                            .navigationBarBackButtonHidden(true)
                    }
                    Spacer()
                    NavigationLink(destination: TutorialView4()) {
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
    TutorialView3()
}

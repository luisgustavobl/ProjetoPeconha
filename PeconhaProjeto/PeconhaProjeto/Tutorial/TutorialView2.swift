//
//  TutorialView2.swift
//  PeconhaProjeto
//
//  Created by Turma01-23 on 10/11/25.
//

import SwiftUI

struct TutorialView2: View {
    var body: some View {
        Text("Hello, World2")
        ZStack{
            let blueBG = LinearGradient(stops: [.init(color: .camoGreen  .opacity(0.6), location: 0.00), .init(color: .white, location: 0.7)], startPoint: .bottomLeading, endPoint: .topLeading)
                .ignoresSafeArea()
            blueBG
            VStack{
                Spacer()
                HStack{
                    NavigationLink(destination: TutorialView1()) {
                        Text("< Retornar")
                            .font(.system(size: 20))
                            .foregroundStyle(.white)
                            .padding()
                            .navigationBarBackButtonHidden(true)
                    }
                    Spacer()
                    NavigationLink(destination: TutorialView3()) {
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
    TutorialView2()
}

//
//  ContentView.swift
//  PeconhaProjeto
//
//  Created by Turma01-23 on 10/11/25.
//

import SwiftUI

struct ContentView: View {
    var onFinish: () -> Void = {}
    var body: some View {
        NavigationStack{
            ZStack{
                let blueBG = LinearGradient(stops: [.init(color: .camoGreen  .opacity(0.7), location: 0.00), .init(color: .white, location: 0.7)], startPoint: .bottomLeading, endPoint: .topLeading)
                    .ignoresSafeArea()
                blueBG
                VStack {
                    Spacer()
                    Image("snakeicon")
                        .resizable()
                        .foregroundStyle(.tint)
                        .frame(width: 150, height: 150)
                        .padding()
                    Text("Bem vindo!")
                        .font(.largeTitle)
                    Spacer()
                    ZStack{
                       /* RoundedRectangle(cornerRadius: 35)
                            .frame(width: 30,height: 50)
                            .foregroundStyle(Color(.systemGray5))*/
                        NavigationLink(destination: TutorialView1()) {
                            Text("Iniciar tutorial")
                                .font(.title2)
                                .foregroundStyle(.white)
                                .frame(width: 200,height: 50)
                                .background(Color(UIColor.systemPurple).opacity(1))
                                .cornerRadius(35)
                                .navigationBarBackButtonHidden(true)
                                
                        }
                    }
                    Spacer()
                    Button() {
                        onFinish()} label: {
                            HStack{
                                Image(systemName: "hand.raised.slash.fill")
                                    .imageScale(.large)
                                    .foregroundStyle(Color(.white))
                                Text("Pular tutorial")
                                    .font(.title3)
                                    .foregroundStyle(Color(.white))
                            }
                        }
                }
            }
        }
    }
}

#Preview {
    ContentView()
}

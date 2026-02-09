//
//  MainView.swift
//  PeconhaProjeto
//
//  Created by Turma01-23 on 10/11/25.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        VStack{
            TabView {
                UseCamera()
                    .tabItem {
                        Label("Camera", systemImage: "camera")
                    }
                Catalog()
                    .tabItem {
                        Label("Catálogo", systemImage: "book")
                    }
               /* FindHospital()
                    .tabItem {
                        Label("Hospitais", systemImage: "plus.square.fill")
                    }*/
                Reserva()
                    .tabItem {
                        Label("Reserva", systemImage: "questionmark.folder")
                    }
            }
            .toolbarBackground(.visible, for: .tabBar)
            .toolbarBackground(Color.black.opacity(0.8), for: .tabBar)
            .navigationBarBackButtonHidden(true)
        }
    }
}

#Preview {
    MainView()
}

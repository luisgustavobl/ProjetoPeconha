//
//  PeconhaProjetoApp.swift
//  PeconhaProjeto
//
//  Created by Turma01-23 on 10/11/25.
//

import SwiftUI

@main
struct PeconhaProjetoApp: App {
    @AppStorage("hasLaunchedBefore") private var hasLaunchedBefore: Bool = false
    var body: some Scene {
        WindowGroup {
            if hasLaunchedBefore {
                MainView()
            } else {
                ContentView {
                    hasLaunchedBefore = true
                }
            }
        }
    }
}

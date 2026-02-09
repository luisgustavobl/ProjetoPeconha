//
//  UseCamera.swift
//  PeconhaProjeto
//
//  Created by Turma01-23 on 11/11/25.
//

import SwiftUI

struct UseCamera: View {
    var body: some View {
        ZStack{
            Color(.black)
                .ignoresSafeArea()
            Image(systemName: "camera.metering.center.weighted.average")
                .resizable()
                .frame(width: 200,height: 200)
                .foregroundStyle(.tint)
        }
    }
}

#Preview {
    UseCamera()
}

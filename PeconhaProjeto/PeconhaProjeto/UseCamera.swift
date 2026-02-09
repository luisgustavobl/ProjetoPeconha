//
//  Camera.swift
//  PeconhaProjeto
//
//  Created by Turma01-23 on 11/11/25.
//

import SwiftUI

struct UseCamera: View {
    var body: some View {
        Text("Câmera")
        Image(systemName: "camera.metering.center.weighted.average")
            .resizable()
            .frame(width: 200,height: 200)
    }
}

#Preview {
    UseCamera()
}

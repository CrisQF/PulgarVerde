//
//  PantallaListaVerduras.swift
//  PulgarVerde
//
//  Created by user275933 on 5/22/25.
//

import SwiftUI

struct PantallaListaVerduras: View {
    
    @State private var vegetales: [Vegetal] = []
    
    var body: some View {
        List(vegetales) { vegetal in
            VegetalCeldaVista(vegetal: vegetal)
        }
        .listStyle(.plain)
        .task {
            do {
                let client = VegetalHTTPCliente ()
                vegetales = try await client.fetchVegetales()
            } catch {
                print(error.localizedDescription)
            }
        }.navigationTitle("Vegetales")
    }
}

#Preview {
    NavigationStack {
        PantallaListaVerduras()
    }
}
//Gaa

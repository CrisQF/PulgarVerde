//
//  VegetalHTTPCliente.swift
//  PulgarVerde
//
//  Created by user275933 on 5/22/25.
//

import Foundation

struct VegetalHTTPCliente {
    
    func fetchVegetales() async throws -> [Vegetal] {
        let (data, _) = try await URLSession.shared.data(from: URL(string: "https://raw.githubusercontent.com/CrisQF/PulgarVerde/refs/heads/main/Vegetales.json")!)
        return try JSONDecoder().decode([Vegetal].self, from: data)
    }
}



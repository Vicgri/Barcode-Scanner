//
//  ContentView.swift
//  Barcode-Scanner
//
//  Created by Victoria Grimen on 04/10/2023.
//

import SwiftUI

struct BarcodeScannerView: View {
    var body: some View {
      NavigationView {
        VStack {
          ScannerView()
            .frame(maxWidth: .infinity, maxHeight: 300)
          
          Spacer().frame(height: 60)
          
          Label("Scanned Barcode:",
                systemImage: "barcode.viewfinder")
          .font(.title)
          
          Text ("Not Yet Scanned")
            .bold()
            .font(.largeTitle)
            .foregroundStyle(.green)
            .padding()
        }
        .navigationTitle("Barcode Scanner")
      }
    }
}

#Preview {
    BarcodeScannerView()
}

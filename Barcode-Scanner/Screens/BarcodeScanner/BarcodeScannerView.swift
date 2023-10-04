//
//  ContentView.swift
//  Barcode-Scanner
//
//  Created by Victoria Grimen on 04/10/2023.
//

import SwiftUI

struct BarcodeScannerView: View {
  
  // Creating a new viewModel with StateObject
  @StateObject var viewModel = BarcodeScannerViewModel()
  
  var body: some View {
    NavigationView {
      VStack {
        ScannerView(scannedCode: $viewModel.scannedCode, 
                    alertItem: $viewModel.alertItem)
          .frame(maxWidth: .infinity, maxHeight: 300)
        
        Spacer().frame(height: 60)
        
        Label("Scanned Barcode:",
              systemImage: "barcode.viewfinder")
        .font(.title)
        
        Text(viewModel.statustext)
          .bold()
          .font(.largeTitle)
          .foregroundColor(viewModel.statusTextColor)
          .padding()
        
        
      }
      .navigationTitle("Barcode Scanner")
      .alert(item: $viewModel.alertItem) { alertItem in
        Alert(title: Text(alertItem.title),
              message: Text(alertItem.message),
              dismissButton: alertItem.dismissButton)
      }
      
    }
  }
}

#Preview {
  BarcodeScannerView()
}

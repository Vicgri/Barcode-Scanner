//
//  BarcodeScannerViewModel.swift
//  Barcode-Scanner
//
//  Created by Victoria Grimen on 04/10/2023.
//

import SwiftUI

final class BarcodeScannerViewModel: ObservableObject {
  
  @Published var scannedCode = ""
  @Published var alertItem: AlertItem?
  
  var statustext: String {
    scannedCode.isEmpty ? "Not Yet Scanned" : scannedCode
  }
  
  var statusTextColor: Color {
    scannedCode.isEmpty ? .red : .green
  }
  
}

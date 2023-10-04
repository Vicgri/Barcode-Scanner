//
//  Alert.swift
//  Barcode-Scanner
//
//  Created by Victoria Grimen on 04/10/2023.
//

import SwiftUI

struct AlertItem: Identifiable {
  let id = UUID()
  let title: String
  let message: String
  let dismissButton: Alert.Button
}

struct AlertContext {
  static let invalidDeviceInput = AlertItem(title: "Invalid Device Input",
                                            message: "Something is wrong with the camera. We are unable to capture the input.", dismissButton: .default(Text("OK")))
  
  static let invalidScannedType = AlertItem(title: "Invalid Scan Type",
                                            message: "The value scanned is not valid. This app scans EAN-8 and EAN-13.",
                                            dismissButton: .default(Text("OK")))
}

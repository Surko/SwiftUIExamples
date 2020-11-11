//
//  VM2.swift
//  EXAMPLE
//
//  Created by Lukas Surin on 10/11/2020.
//  Copyright © 2020 Ceska sporitelna. All rights reserved.
//

import SwiftUI

// 28. Published
class VM4: ObservableObject {
	@Published var text: String = "Hello world VM!"
	@Published var showText: Bool = true
	@Published var showFormatting: Bool = false
	
	var btnArray: [(String, Color, Binding<Bool>)] = []
	
	init() {
		self.btnArray = [("SHOW/HIDE", Color.pink, Binding(get: {
			self.showText
		}, set: {
			self.showText = $0
		})), ("FORMAT ON/OFF", Color.purple, Binding(get: {
			self.showFormatting
		}, set: {
			self.showFormatting = $0
		}))]
	}
}

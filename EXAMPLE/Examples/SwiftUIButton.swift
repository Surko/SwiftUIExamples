//
//  SwiftUIButton.swift
//  EXAMPLE
//
//  Created by Lukas Surin on 10/11/2020.
//  Copyright © 2020 Ceska sporitelna. All rights reserved.
//

import SwiftUI

struct SwiftUIButton: View {
	// 12. State propagation !!!
	@Binding var toggle: Bool
	var text: String
	
	var body: some View {
		let texts = "asad"
		var textUI = Button(action: {
			self.toggle.toggle()
		}) { () -> Text in
			Text(texts)
		}
		
		return VStack {
			Text("text")
			textUI
		}
	}
}

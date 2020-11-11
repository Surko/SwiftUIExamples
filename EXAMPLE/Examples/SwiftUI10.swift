//
//  SwiftUI1.swift
//  EXAMPLE
//
//  Created by Lukas Surin on 10/11/2020.
//  Copyright © 2020 Ceska sporitelna. All rights reserved.
//

import SwiftUI

struct SwiftUI10: View {
	@State var text: String = "Hello world!"
	@State var showText: Bool = true
	@State var showFormatting: Bool = false
		
	var body: some View {
		VStack {
			Spacer()
			
			if showText {
				// 16. designing styling extension
				Text(text).styling1(on: showFormatting)
			}
						
			Spacer()
			
			HStack {
				Spacer()
				SwiftUIButton(toggle: $showText, text: "SHOW/HIDE")
					.styling(color: Color.pink)
				Spacer()
				SwiftUIButton(toggle: $showFormatting, text: "FORMAT ON/OFF")
					.styling(color: Color.purple)
				Spacer()
			}.padding(Edge.Set.bottom, 32)
		}
	}
}

extension Text {
	func styling1(on: Bool) -> some View {
		return self
			.multilineTextAlignment(.center)
			.font(on ? Font.system(size: 45) : Font.system(size: 15))
			.background(on ? Color.blue : Color.white)
			.frame(width: on ? 250 : nil)
			.padding(on ? 8 : 0)
			.background(on ? Color.red : Color.white)
			.padding(on ? 8 : 0)
			.background(on ? Color.yellow: Color.white)
	}
}

extension SwiftUIButton {
	func styling(color: Color) -> some View {
		return self
			.foregroundColor(Color.white)
			.padding(16)
			.background(color)
	}
}

struct SwiftUI10_Previews: PreviewProvider {
	static var previews: some View {
		
		Group {
			SwiftUI10()
				.previewDevice("iPhone SE")
			
			SwiftUI10()
				.previewDevice("iPhone 11")
		}
	}
}

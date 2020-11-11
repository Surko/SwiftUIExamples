//
//  SwiftUI1.swift
//  EXAMPLE
//
//  Created by Lukas Surin on 10/11/2020.
//  Copyright © 2020 Ceska sporitelna. All rights reserved.
//

import SwiftUI

struct SwiftUI11: View {
	@State var text: String = "Hello world!"
	@State var showText: Bool = true
	@State var showFormatting: Bool = false
		
	var body: some View {
		VStack {
			Spacer()
			
			if showText {
				// 16. designing styling extension
				Text(text).styling2(on: showFormatting)
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
	
	// 16. AnyView
	func styling2(on: Bool) -> some View {
		if on {
			return AnyView(self
				.font(Font.system(size: 45))
				.background(Color.blue)
				.frame(width: 250)
				.padding(8)
				.background(Color.red)
				.padding(8)
				.background(Color.yellow))
		} else {
			return AnyView(self)
		}
	}
}

struct SwiftUI11_Previews: PreviewProvider {
	static var previews: some View {
		
		Group {
			SwiftUI11()
				.previewDevice("iPhone SE")
			
			SwiftUI11()
				.previewDevice("iPhone 11")
		}
	}
}

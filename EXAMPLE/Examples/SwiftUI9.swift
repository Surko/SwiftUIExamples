//
//  SwiftUI1.swift
//  EXAMPLE
//
//  Created by Lukas Surin on 10/11/2020.
//  Copyright © 2020 Ceska sporitelna. All rights reserved.
//

import SwiftUI

struct SwiftUI9: View {
	@State var text: String = "Hello world!"
	@State var showText: Bool = true
	@State var showFormatting: Bool = false
		
	var body: some View {
		VStack {
			Spacer()
			
			if showText {
				// 15. designing logic
				Text(text)
					.font(showFormatting ? Font.system(size: 45) : Font.system(size: 15))
					.background(showFormatting ? Color.blue : Color.white)
					.frame(width: showFormatting ? 250 : nil)
					.padding(showFormatting ? 8 : 0)
					.background(showFormatting ? Color.red : Color.white)
					.padding(showFormatting ? 8 : 0)
					.background(showFormatting ? Color.yellow: Color.white)
					.padding([.leading], 16)
			}
						
			Spacer()
			
			HStack {
				Spacer()
				SwiftUIButton(toggle: $showText, text: "SHOW/HIDE")
					.foregroundColor(Color.white)
					.padding(16)
					.background(Color.pink)
				Spacer()
				SwiftUIButton(toggle: $showFormatting, text: "FORMAT ON/OFF")
					.foregroundColor(Color.white)
					.padding(16)
				.background(Color.purple)
				Spacer()
			}.padding(Edge.Set.bottom, 32)
		}
	}
}

struct SwiftUI9_Previews: PreviewProvider {
	static var previews: some View {
		
		Group {
			SwiftUI9()
				.previewDevice("iPhone SE")
			
			SwiftUI9()
				.previewDevice("iPhone 11")
		}
	}
}

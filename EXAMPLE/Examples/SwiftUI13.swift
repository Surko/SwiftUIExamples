//
//  SwiftUI1.swift
//  EXAMPLE
//
//  Created by Lukas Surin on 10/11/2020.
//  Copyright © 2020 Ceska sporitelna. All rights reserved.
//

import SwiftUI

struct SwiftUI13: View {
	@State var text: String = "Hello world!"
	@State var showText: Bool = true
	@State var showFormatting: Bool = false
		
	var body: some View {
		// 18: Geo Reader
		GeometryReader { geometry in
			VStack {
				Spacer()
								
				// 19: Use of self
				if self.showText {
					Text(self.text).styling1(on: self.showFormatting)
						// 20: positioning with geometry
						.position(x: geometry.size.width / 3, y: geometry.size.height / 5)
				}

				Spacer()
				
				HStack {
					Spacer()
					SwiftUIButton(toggle: self.$showText, text: "SHOW/HIDE")
						.styling(color: Color.pink)
					Spacer()
					SwiftUIButton(toggle: self.$showFormatting, text: "FORMAT ON/OFF")
						.styling(color: Color.purple)
					Spacer()
				}.padding(Edge.Set.bottom, 32)
			}
		}
	}
}

struct SwiftUI13_Previews: PreviewProvider {
	static var previews: some View {
		
		Group {
			SwiftUI13()
				.previewDevice("iPhone SE")
			
			SwiftUI13()
				.previewDevice("iPhone 11")
		}
	}
}

//
//  SwiftUI1.swift
//  EXAMPLE
//
//  Created by Lukas Surin on 10/11/2020.
//  Copyright © 2020 Ceska sporitelna. All rights reserved.
//

import SwiftUI

struct SwiftUI14: View {
	@State var text: String = "Hello world!"
	@State var showText: Bool = true
	@State var showFormatting: Bool = false
		
	var body: some View {
		ZStack {
			// 22: ZStack back from SwiftUI12 + SwiftUIIndicator
			SwiftUIIndicator(isLoading: .constant(true))
			
			GeometryReader { geo in
				// 23: Geometry reader from SwiftUI13 + SwiftUIIndicator + bindings
				SwiftUIIndicator(isLoading: self.$showText)
					.position(x: geo.size.width / 3, y: geo.size.height / 2)
				
				SwiftUIIndicator(isLoading: self.$showText)
				.position(x: geo.size.width / 3 * 2, y: geo.size.height / 2)
				
				VStack {
					Spacer()
					
					if self.showText {
						Text(self.text).styling1(on: self.showFormatting)
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
}

struct SwiftUI14_Previews: PreviewProvider {
	static var previews: some View {
		
		Group {
			SwiftUI14()
				.previewDevice("iPhone SE")
			
			SwiftUI14()
				.previewDevice("iPhone 11")
		}
	}
}

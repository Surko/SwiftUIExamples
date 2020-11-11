//
//  SwiftUI1.swift
//  EXAMPLE
//
//  Created by Lukas Surin on 10/11/2020.
//  Copyright © 2020 Ceska sporitelna. All rights reserved.
//

import SwiftUI

struct SwiftUI12: View {
	@State var text: String = "Hello world!"
	@State var showText: Bool = true
	@State var showFormatting: Bool = false
		
	var body: some View {
		ZStack {
			// 17: ZStack
			Text("NOT CONSTRAINTED ANYMORE")
			
			VStack {
				Spacer()
				
				if showText {
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
}

struct SwiftUI12_Previews: PreviewProvider {
	static var previews: some View {
		
		Group {
			SwiftUI12()
				.previewDevice("iPhone SE")
			
			SwiftUI12()
				.previewDevice("iPhone 11")
		}
	}
}

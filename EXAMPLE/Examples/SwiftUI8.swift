//
//  SwiftUI1.swift
//  EXAMPLE
//
//  Created by Lukas Surin on 10/11/2020.
//  Copyright © 2020 Ceska sporitelna. All rights reserved.
//

import SwiftUI

struct SwiftUI8: View {
	@State var text: String = "Hello world!"
	@State var showText: Bool = true
	@State var showFormatting: Bool = false
		
	var body: some View {
		VStack {
			if showText {
				// 14. designing
				Text(text)
					.background(Color.blue)
					.frame(width: 150)
					.padding(8)
					.background(Color.red)
					.padding(8)
					.background(Color.yellow)
			}
						
			HStack {
				SwiftUIButton(toggle: $showText, text: "SHOW/HIDE")
				SwiftUIButton(toggle: $showFormatting, text: "FORMAT ON/OFF")
			}
		}
	}
}

struct SwiftUI8_Previews: PreviewProvider {
	static var previews: some View {
		
		Group {
			SwiftUI8()
				.previewDevice("iPhone SE")
			
			SwiftUI8()
				.previewDevice("iPhone 11")
		}
	}
}

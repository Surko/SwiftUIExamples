//
//  SwiftUI1.swift
//  EXAMPLE
//
//  Created by Lukas Surin on 10/11/2020.
//  Copyright © 2020 Ceska sporitelna. All rights reserved.
//

import Foundation
import SwiftUI

struct SwiftUI7: View {
	@State var text: String = "Hello world!"
	@State var showText: Bool = true
		
	var body: some View {
		VStack {
			if showText {
				Text(text)
			}
			
			// 13. Binding
			SwiftUI7Button(showText: $showText)
		}
	}
}

struct SwiftUI7Button: View {
	// 12. State propagation !!!
	@Binding var showText: Bool
	
	var body: some View {
		Button(action: {
			self.showText.toggle()
		}) { () -> Text in
			Text("Push me And then just touch me")
		}
	}
}

struct SwiftUI7_Previews: PreviewProvider {
	static var previews: some View {
		
		Group {
			SwiftUI7()
				.previewDevice("iPhone SE")
			
			SwiftUI7()
				.previewDevice("iPhone 11")
		}
	}
}

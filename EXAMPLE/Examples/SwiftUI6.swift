//
//  SwiftUI1.swift
//  EXAMPLE
//
//  Created by Lukas Surin on 10/11/2020.
//  Copyright © 2020 Ceska sporitelna. All rights reserved.
//

import Foundation
import SwiftUI

struct SwiftUI6: View {
	@State var text: String = "Hello world!"
	@State var showText: Bool = true
		
	var body: some View {
		VStack {
			if showText {
				Text(text)
			}
			SwiftUI6Button(showText: showText)
		}
	}
}

// 10. New UI Components
struct SwiftUI6Button: View {
	// 11. State propagation?
	@State var showText: Bool
	
	var body: some View {
		Button(action: {
			self.showText.toggle()
		}) { () -> Text in
			Text("Push me And then just touch me")
		}
	}
}

struct SwiftUI6_Previews: PreviewProvider {
	static var previews: some View {
		
		Group {
			SwiftUI6()
				.previewDevice("iPhone SE")
			
			SwiftUI6()
				.previewDevice("iPhone 11")
		}
	}
}

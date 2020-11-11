//
//  SwiftUI1.swift
//  EXAMPLE
//
//  Created by Lukas Surin on 10/11/2020.
//  Copyright © 2020 Ceska sporitelna. All rights reserved.
//

import Foundation
import SwiftUI

struct SwiftUI5: View {
		
	@State var text: String = "Hello world!"
	// 8. ui logic
	@State var showText: Bool = true
		
	var body: some View {
		VStack {
			if showText {
				Text(text)
			}
			Button(action: {
				// 9. switcher
				self.showText.toggle()
			}) { () -> Text in
				Text("Push me And then just touch me")
			}
		}
	}
}

struct SwiftUI5_Previews: PreviewProvider {
	static var previews: some View {
		
		Group {
			SwiftUI5()
				.previewDevice("iPhone SE")
			
			SwiftUI5()
				.previewDevice("iPhone 11")
		}
	}
}

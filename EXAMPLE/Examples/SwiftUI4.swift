//
//  SwiftUI4.swift
//  EXAMPLE
//
//  Created by Lukas Surin on 10/11/2020.
//  Copyright © 2020 Ceska sporitelna. All rights reserved.
//

import Foundation


//
//  SwiftUI1.swift
//  EXAMPLE
//
//  Created by Lukas Surin on 10/11/2020.
//  Copyright © 2020 Ceska sporitelna. All rights reserved.
//

import Foundation
import SwiftUI

struct SwiftUI4: View {

	@State var text: String = "Hello world!"
		
	var body: some View {
		// 6. more elements
		VStack {
			Text(text)
			// 7. Button
			Button(action: {
				self.text = self.text + " from Surkys"
			}) { () -> Text in
				Text("Push me And then just touch me")
			}
		}
	}
}

struct SwiftUI4_Previews: PreviewProvider {
	static var previews: some View {
		
		Group {
			SwiftUI4()
				.previewDevice("iPhone SE")
			
			SwiftUI4()
				.previewDevice("iPhone 11")
		}
	}
}

//
//  SwiftUI1.swift
//  EXAMPLE
//
//  Created by Lukas Surin on 10/11/2020.
//  Copyright © 2020 Ceska sporitelna. All rights reserved.
//

import Foundation
import SwiftUI

struct SwiftUI3: View {
	
	// 5. State variable
	var text: String = "Hello world!"
		
	var body: some View {
		Text(text)		
	}
}

struct SwiftUI3_Previews: PreviewProvider {
	static var previews: some View {
		Group {
			SwiftUI3()
				.previewDevice("iPhone SE")
			
			SwiftUI3()
				.previewDevice("iPhone 11")
		}
	}
}

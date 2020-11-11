//
//  SwiftUI1.swift
//  EXAMPLE
//
//  Created by Lukas Surin on 10/11/2020.
//  Copyright © 2020 Ceska sporitelna. All rights reserved.
//

import SwiftUI

struct SwiftUI2: View {
	var body: some View {
		Text("Hello world!")
	}
}

// 4 Previews
struct SwiftUI2_Previews: PreviewProvider {
	static var previews: some View {
		Group {
			SwiftUI2()
				.previewDevice("iPhone SE")
			
			SwiftUI2()
				.previewDevice("iPhone 11")
		}
	}
}

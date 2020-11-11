//
//  SwiftUI1.swift
//  EXAMPLE
//
//  Created by Lukas Surin on 10/11/2020.
//  Copyright © 2020 Ceska sporitelna. All rights reserved.
//

import SwiftUI

struct SwiftUI19: View {
	@ObservedObject var vm: VM4
		
	var i = 0
	var body: some View {
		VStack {
			Spacer()

			if self.vm.showText {
				Text(self.vm.text).styling1(on: self.vm.showFormatting)
			}
						
			Spacer()
			
			HStack(spacing: 24) {
				ForEach(self.vm.btnArray, id:\.0) { val in
					SwiftUIButton(toggle: val.2, text: val.0)
						.styling(color: val.1)
						.cornerRadius(8)
				}
			}.padding(Edge.Set.bottom, 32)
		}
	}
}

struct SwiftUI19_Previews: PreviewProvider {
	static var previews: some View {
		
		Group {
			SwiftUI19(vm: VM4())
				.previewDevice("iPhone SE")
			
			SwiftUI19(vm: VM4())
				.previewDevice("iPhone 11")
		}
	}
}

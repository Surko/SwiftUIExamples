//
//  SwiftUI1.swift
//  EXAMPLE
//
//  Created by Lukas Surin on 10/11/2020.
//  Copyright © 2020 Ceska sporitelna. All rights reserved.
//

import SwiftUI

struct SwiftUI15: View {
	@ObservedObject var vm: VM1
		
	var body: some View {
		VStack {
			Spacer()
			
			// 25: Use VM states instead of state variables from struct
			if self.vm.showText {
				Text(self.vm.text).styling1(on: self.vm.showFormatting)
			}
						
			Spacer()
			
			HStack {
				Spacer()
				// 26: prepend binding variables with VM
				SwiftUIButton(toggle: self.vm.$showText, text: "SHOW/HIDE")
					.styling(color: Color.pink)
				Spacer()
				SwiftUIButton(toggle: self.vm.$showFormatting, text: "FORMAT ON/OFF")
					.styling(color: Color.purple)
				Spacer()
			}.padding(Edge.Set.bottom, 32)
		}
	}
}

struct SwiftUI15_Previews: PreviewProvider {
	static var previews: some View {
		
		Group {
			SwiftUI15(vm: VM1())
				.previewDevice("iPhone SE")
			
			SwiftUI15(vm: VM1())
				.previewDevice("iPhone 11")
		}
	}
}

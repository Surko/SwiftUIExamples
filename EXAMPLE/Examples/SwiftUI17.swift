//
//  SwiftUI1.swift
//  EXAMPLE
//
//  Created by Lukas Surin on 10/11/2020.
//  Copyright © 2020 Ceska sporitelna. All rights reserved.
//

import SwiftUI

struct SwiftUI17: View {
	// 29. change to VM2
	@ObservedObject var vm: VM2
		
	var body: some View {
		VStack {
			Spacer()
			
			if self.vm.showText {
				Text(self.vm.text).styling1(on: self.vm.showFormatting)
			}
						
			Spacer()
			
			HStack {
				Spacer()
				SwiftUIButton(toggle: self.$vm.showText, text: "SHOW/HIDE")
					.styling(color: Color.pink)
				Spacer()
				SwiftUIButton(toggle: self.$vm.showFormatting, text: "FORMAT ON/OFF")
					.styling(color: Color.purple)
				Spacer()
			}.padding(Edge.Set.bottom, 32)
		}
	}
}

struct SwiftUI17_Previews: PreviewProvider {
	static var previews: some View {
		
		Group {
			SwiftUI17(vm: VM2())
				.previewDevice("iPhone SE")
			
			SwiftUI17(vm: VM2())
				.previewDevice("iPhone 11")
		}
	}
}

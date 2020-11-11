//
//  SwiftUI1.swift
//  EXAMPLE
//
//  Created by Lukas Surin on 10/11/2020.
//  Copyright © 2020 Ceska sporitelna. All rights reserved.
//

import SwiftUI

struct SwiftUI18: View {
	@ObservedObject var vm: VM3
		
	var body: some View {
		VStack {
			Spacer()
			
			if self.vm.showText {
				Text(self.vm.text).styling1(on: self.vm.showFormatting)
			}
						
			Spacer()
			
			HStack {
				ForEach(self.vm.btnArray, id:\.self) { txt in
					SwiftUIButton(toggle: self.$vm.showText, text: txt)
						.styling(color: Color.pink)
				}
			}.padding(Edge.Set.bottom, 32)
				
		}
	}
}

struct SwiftUI18_Previews: PreviewProvider {
	static var previews: some View {
		
		Group {
			SwiftUI18(vm: VM3())
				.previewDevice("iPhone SE")
			
			SwiftUI18(vm: VM3())
				.previewDevice("iPhone 11")
		}
	}
}

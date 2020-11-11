//
//  VM1.swift
//  EXAMPLE
//
//  Created by Lukas Surin on 10/11/2020.
//  Copyright © 2020 Ceska sporitelna. All rights reserved.
//

import SwiftUI

// 24: ObservableObject
class VM1: ObservableObject {
	@State var text: String = "Hello world VM!"
	@State var showText: Bool = true
	@State var showFormatting: Bool = false
}

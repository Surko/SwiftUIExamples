//
//  VM2.swift
//  EXAMPLE
//
//  Created by Lukas Surin on 10/11/2020.
//  Copyright © 2020 Ceska sporitelna. All rights reserved.
//

import SwiftUI

// 28. Published
class VM2: ObservableObject {
	@Published var text: String = "Hello world VM!"
	@Published var showText: Bool = true
	@Published var showFormatting: Bool = false	
}

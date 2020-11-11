//
//  ViewController.swift
//  EXAMPLE
//
//  Created by Lukas Surin on 10/11/2020.
//  Copyright © 2020 Ceska sporitelna. All rights reserved.
//

import UIKit
import SwiftUI

class ViewController: UIViewController {

	override func viewDidLoad() {
		super.viewDidLoad()
				
	}
	
	override func viewDidAppear(_ animated: Bool) {
		super.viewDidAppear(animated)
		// 100: Use UIKit with SwiftUI
		self.present(UIHostingController(rootView: SwiftUI12()), animated: true)
	}


}


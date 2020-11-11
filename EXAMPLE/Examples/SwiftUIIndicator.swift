//
//  SwiftUIIndicator.swift
//  EXAMPLE
//
//  Created by Lukas Surin on 10/11/2020.
//  Copyright © 2020 Ceska sporitelna. All rights reserved.
//

import UIKit
import SwiftUI


// 21: Own UIKit bridge
struct SwiftUIIndicator: UIViewRepresentable {
    @Binding var isLoading: Bool

    public func makeUIView(context: Context) -> UIActivityIndicatorView {
        return UIActivityIndicatorView()
    }
    
    public func updateUIView(_ uiView: UIActivityIndicatorView, context: Context) {
		if isLoading {
			uiView.startAnimating()
        } else {
			uiView.stopAnimating()
        }
    }
}

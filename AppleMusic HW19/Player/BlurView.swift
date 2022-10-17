//
//  BlurView.swift
//  AppleMusic HW19
//
//  Created by Артем Дербин on 17.10.2022.
//

import SwiftUI

struct BlurView: UIViewRepresentable {
    func updateUIView(_ uiView: UIVisualEffectView, context: Context) {
    }
    
    func makeUIView(context: Context) -> UIVisualEffectView {
        let view = UIVisualEffectView(effect: UIBlurEffect(style: .systemChromeMaterial))
        return view
    }
}

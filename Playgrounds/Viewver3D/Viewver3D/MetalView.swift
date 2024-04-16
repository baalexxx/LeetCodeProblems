//
//  MetalView.swift
//  Viewver3D
//
//  Created by Oleksii Baiev on 01/12/2022.
//

import SwiftUI
import UIKit
import MetalKit

final class MetalViewCoordinator {
    
    var mtkVew: MTKView = .init()
    var renderer: Renderer
}

struct MetalView: UIViewRepresentable {
    
    let coordinator: MetalViewCoordinator = .init()
    
    func makeUIView(context: Context) -> some UIView {
        
    }
    
    func updateUIView(_ uiView: UIViewType, context: Context) {
    }

}


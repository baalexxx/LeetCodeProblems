////
////  Renderer.swift
////  Viewver3D
////
////  Created by Oleksii Baiev on 01/12/2022.
////
//
//import Foundation
//import MetalKit
//import ModelIO
//
//final class Renderer: NSObject {
//
//    private unowned let mtkView: MTKView
//    private let device: MTLDevice
//
//    // Pipeline
//    private var commandQueue: MTLCommandQueue!
//    private var pipelineState: MTLRenderPipelineState!
//    private var depthStencilState: MTLDepthStencilState!
//
//    // resources
//    private var vertexDescriptor: MTLVertexDescriptor!
//    private var texture: MTLTexture!
//    private var meshes: [MTKMesh] = .init()
//
//    private var time: Float = 0
//
//
//    init(mtkView: MTKView, device: MTLDevice) {
//        self.mtkView = mtkView
//        self.device = device
//        commandQueue = device.makeCommandQueue()
//
//        super.init()
//
//        loadResources()
//        buildPipeline()
//
//    }
//
//    func loadResources() {
//        let modelURL = Bundle.main.url(forResource: "1991.5kz", withExtension: "obj")
//
//        let vertexDesc: MDLVertexDescriptor = .init()
//        vertexDesc.attributes[0] = MDLVertexAttribute(name: MDLVertexAttributePosition,
//                                                      format: .float3,
//                                                      offset: 0, bufferIndex: 0)
//        vertexDesc.attributes[1] = MDLVertexAttribute(name: MDLVertexAttributeTextureCoordinate,
//                                                      format: .float2,
//                                                      offset: MemoryLayout<Float>.size * 3, bufferIndex: 0)
//        vertexDesc.layouts[0] = MDLVertexBufferLayout(stride: MemoryLayout<Float>.size * 5)
//        vertexDescriptor = MTKMetalVertexDescriptorFromModelIO(vertexDesc)
//
//        let buffer = MTKMeshBufferAllocator(device: device)
//        let asset = MDLAsset(url: modelURL, vertexDescriptor: vertexDesc, bufferAllocator: buffer)
//        var meshes = [MDLMesh]()
//
//        do {
//            pipelineState
//        } catch {
//
//        }
//
//
//    }
//
//    func buildPipeline() {
//        let depthStencilDesc: MTLDepthStencilDescriptor = .init()
//        depthStencilDesc.depthCompareFunction = .less
//        depthStencilDesc.isDepthWriteEnabled = true
//        depthStencilState = device.makeDepthStencilState(descriptor: depthStencilDesc)
//
//        guard let library = device.makeDefaultLibrary() else {
//            return
//        }
//
//        let pipelineDesc: MTLRenderPipelineDescriptor = .init()
//        pipelineDesc.vertexDescriptor = vertexDescriptor
//        pipelineDesc.vertexFunction = library.makeFunction(name: "tex_vertex")
//        pipelineDesc.fragmentFunction = library.makeFunction(name: "tex_fragment")
//        pipelineDesc.colorAttachments[0].pixelFormat = .bgra8Unorm
//        pipelineDesc.depthAttachmentPixelFormat = .depth32Float
//    }
//
//    /// update
//    func updateMeshe(encoder: MTLRenderCommandEncoder, fps: Int) {
//
//    }
//
//}
//
//extension Renderer: MTKViewDelegate {
//    func mtkView(_ view: MTKView, drawableSizeWillChange size: CGSize) {
//
//    }
//
//
//    func draw(in view: MTKView) {
//
//    }
//
//}
//
//

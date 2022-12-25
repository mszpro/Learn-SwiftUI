//
//  QRCodeScanner_UIViewRepresentable.swift
//  SwiftUI-Components-Library
//
//  Created by msz on 2022/12/25.
//

import SwiftUI
import AVFoundation

struct QRCodeScanner_UIViewRepresentable: UIViewRepresentable {
    
    @Binding var scannedCode: String?
    var viewSize: CGSize
    
    private var captureSession = AVCaptureSession()
    private var qrCodeFrameView = UIView()
    var videoPreviewLayer: AVCaptureVideoPreviewLayer
    
    init(scannedCode: Binding<String?>, viewSize: CGSize) {
        self._scannedCode = scannedCode
        self.viewSize = viewSize
        videoPreviewLayer = AVCaptureVideoPreviewLayer(session: captureSession)
        videoPreviewLayer.videoGravity = AVLayerVideoGravity.resizeAspectFill
        videoPreviewLayer.frame = .init(origin: .zero, size: viewSize)
    }
    
    func makeUIView(context: Context) -> UIView {
        
        let mainView = UIView(frame: .init(origin: .zero, size: viewSize))
        
        guard let captureDevice = AVCaptureDevice.default(for: AVMediaType.video) else {
            print("Failed to get the camera device")
            return mainView
        }
        
        do {
            // Get an instance of the AVCaptureDeviceInput class using the previous device object.
            let input = try AVCaptureDeviceInput(device: captureDevice)
            
            // Set the input device on the capture session.
            captureSession.addInput(input)
            
            // Initialize a AVCaptureMetadataOutput object and set it as the output device to the capture session.
            let captureMetadataOutput = AVCaptureMetadataOutput()
            captureSession.addOutput(captureMetadataOutput)
            captureMetadataOutput.setMetadataObjectsDelegate(context.coordinator, queue: DispatchQueue.main)
            captureMetadataOutput.metadataObjectTypes = [.qr]
            
        } catch {
            print(error)
        }
        
        mainView.layer.addSublayer(videoPreviewLayer)
        
        // Start running the video session
        DispatchQueue.global(qos: .background).async {
            captureSession.startRunning()
        }
        
        // Prepare the view that highlights any detected QR code
        qrCodeFrameView.layer.borderColor = UIColor.green.cgColor
        qrCodeFrameView.layer.borderWidth = 2
        mainView.addSubview(qrCodeFrameView)
        mainView.bringSubviewToFront(qrCodeFrameView)
        
        return mainView
    }
    
    func makeCoordinator() -> QRCodeScanner_UIViewRepresentable.Coordinator {
        return Coordinator(qrCodeFrameView: self.qrCodeFrameView, videoPreviewLayer: self.videoPreviewLayer, scannedCode: $scannedCode)
    }
    
    func updateUIView(_ view: UIView, context: Context) {
        
    }
    
    class Coordinator: NSObject, AVCaptureMetadataOutputObjectsDelegate {
        
        var qrCodeFrameView: UIView
        var videoPreviewLayer: AVCaptureVideoPreviewLayer?
        @Binding var scannedCode: String?
        
        init(qrCodeFrameView: UIView, videoPreviewLayer: AVCaptureVideoPreviewLayer?, scannedCode: Binding<String?>) {
            self.qrCodeFrameView = qrCodeFrameView
            self.videoPreviewLayer = videoPreviewLayer
            self._scannedCode = scannedCode
        }
        
        func metadataOutput(_ output: AVCaptureMetadataOutput, didOutput metadataObjects: [AVMetadataObject], from connection: AVCaptureConnection) {
            
            // Get the metadata object.
            if let metadataObj = metadataObjects.first as? AVMetadataMachineReadableCodeObject,
               metadataObj.type == .qr {
                // QR code detected
                if let barCodeObject = videoPreviewLayer?.transformedMetadataObject(for: metadataObj) {
                    qrCodeFrameView.frame = barCodeObject.bounds
                    qrCodeFrameView.layer.borderColor = UIColor.green.cgColor
                    if self.scannedCode != metadataObj.stringValue {
                        // new code scanned
                        self.scannedCode = metadataObj.stringValue
                        UINotificationFeedbackGenerator().notificationOccurred(.success)
                    }
                }
            } else {
                // No QR code detected
                qrCodeFrameView.frame = CGRect.zero
                qrCodeFrameView.layer.borderColor = UIColor.yellow.cgColor
            }
            
        }
        
        private func updatePreviewLayer(layer: AVCaptureConnection, orientation: AVCaptureVideoOrientation) {
            layer.videoOrientation = orientation
        }
        
    }
    
}

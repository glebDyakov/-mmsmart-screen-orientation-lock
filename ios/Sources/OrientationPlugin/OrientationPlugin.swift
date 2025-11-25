import Foundation
import Capacitor

/**
 * Please read the Capacitor iOS Plugin Development Guide
 * here: https://capacitorjs.com/docs/plugins/ios
 */
@objc(OrientationPlugin)
public class OrientationPlugin: CAPPlugin, CAPBridgedPlugin {
    public let identifier = "OrientationPlugin"
    public let jsName = "Orientation"
    public let pluginMethods: [CAPPluginMethod] = [
        CAPPluginMethod(name: "echo", returnType: CAPPluginReturnPromise),
        CAPPluginMethod(name: "lock", returnType: CAPPluginReturnPromise),
        CAPPluginMethod(name: "unlock", returnType: CAPPluginReturnPromise)
    ]
    private let implementation = Orientation()

    @objc func echo(_ call: CAPPluginCall) {
        let value = call.getString("value") ?? ""
        call.resolve([
            "value": implementation.echo(value)
        ])
    }

    @objc func lock(_ call: CAPPluginCall) {
        NotificationCenter.default.post(name: Notification.Name("OrientationPluginLockEvent"), object: nil, userInfo: ["message": "message"])
        UIDevice.current.setValue(UIInterfaceOrientation.portrait.rawValue, forKey: "orientation")
        UIViewController.attemptRotationToDeviceOrientation()
        call.resolve([
            "value": implementation.lock()
        ])
    }

    @objc func unlock(_ call: CAPPluginCall) {
        NotificationCenter.default.post(name: Notification.Name("OrientationPluginUnlockEvent"), object: nil, userInfo: ["message": "message"])
        call.resolve([
            "value": implementation.unlock()
        ])
    }
}

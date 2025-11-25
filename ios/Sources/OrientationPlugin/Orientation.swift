import Foundation
import UIKit
import Capacitor

@objc public class Orientation: NSObject {
    @objc public func echo(_ value: String) -> String {
        print(value)
        return value
    }
    
    @objc public func lock() -> String  {
        return ""
    }
    
    @objc public func unlock() -> String  {
        return ""
    }
}

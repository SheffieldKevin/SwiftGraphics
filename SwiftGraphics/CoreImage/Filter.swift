import Foundation
import CoreImage

public class Filter {

    public let filter: CIFilter

    public var outputImage: CIImage? {
        get {
            return valueForKey("outputImage") as? CIImage
        }
    }

    public init(name: String) {
        filter = CIFilter(name: name)!
        filter.setDefaults()
    }

    public func valueForKey(key: String) -> AnyObject? {
        return filter.valueForKey(key)
    }

    public func setValue(value: AnyObject?, forKey key: String) {
        filter.setValue(value, forKey: key)
    }

}

public extension CGRect {
    func toCIVector() -> CIVector {
        return CIVector(CGRect: self)
    }
}

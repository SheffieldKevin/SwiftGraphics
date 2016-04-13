import CoreImage

/**
Transitions from one image to another of a differing dimensions by unfolding.

[More Information](http: //developer.apple.com/cgi-bin/apple_ref.cgi?apple_ref=//apple_ref/doc/filter/ci/CIAccordionFoldTransition)
*/
public class AccordionFoldTransition: Filter {

    let name = "CIAccordionFoldTransition"

    public init(inputImage: CIImage? = nil, inputTargetImage: CIImage? = nil, inputBottomHeight: CGFloat? = nil, inputNumberOfFolds: CGFloat? = nil, inputFoldShadowAmount: CGFloat? = nil, inputTime: CGFloat? = nil) {
        super.init(name: "CIAccordionFoldTransition")

        if let inputImage = inputImage {
            self.inputImage = inputImage
        }
        if let inputTargetImage = inputTargetImage {
            self.inputTargetImage = inputTargetImage
        }
        if let inputBottomHeight = inputBottomHeight {
            self.inputBottomHeight = inputBottomHeight
        }
        if let inputNumberOfFolds = inputNumberOfFolds {
            self.inputNumberOfFolds = inputNumberOfFolds
        }
        if let inputFoldShadowAmount = inputFoldShadowAmount {
            self.inputFoldShadowAmount = inputFoldShadowAmount
        }
        if let inputTime = inputTime {
            self.inputTime = inputTime
        }
    }


    /// The image to use as an input image. For filters that also use a background image, this is the foreground image.
    public var inputImage: CIImage? {
        get {
            return valueForKey("inputImage") as? CIImage
        }
        set {
            setValue(newValue, forKey: "inputImage")
        }
    }

    /// The target image for a transition.
    public var inputTargetImage: CIImage? {
        get {
            return valueForKey("inputTargetImage") as? CIImage
        }
        set {
            setValue(newValue, forKey: "inputTargetImage")
        }
    }

    public var inputBottomHeight: CGFloat? {
        get {
            return valueForKey("inputBottomHeight") as? CGFloat
        }
        set {
            setValue(newValue, forKey: "inputBottomHeight")
        }
    }

    public var inputNumberOfFolds: CGFloat? {
        get {
            return valueForKey("inputNumberOfFolds") as? CGFloat
        }
        set {
            setValue(newValue, forKey: "inputNumberOfFolds")
        }
    }

    public var inputFoldShadowAmount: CGFloat? {
        get {
            return valueForKey("inputFoldShadowAmount") as? CGFloat
        }
        set {
            setValue(newValue, forKey: "inputFoldShadowAmount")
        }
    }

    /// The duration of the effect.
    public var inputTime: CGFloat? {
        get {
            return valueForKey("inputTime") as? CGFloat
        }
        set {
            setValue(newValue, forKey: "inputTime")
        }
    }
}

/**
Adds color components to achieve a brightening effect. This filter is typically used to add highlights and lens flare effects.

[More Information](http: //developer.apple.com/cgi-bin/apple_ref.cgi?apple_ref=//apple_ref/doc/filter/ci/CIAdditionCompositing)
*/
public class AdditionCompositing: Filter {

    let name = "CIAdditionCompositing"

    public init(inputImage: CIImage? = nil, inputBackgroundImage: CIImage? = nil) {
        super.init(name: "CIAdditionCompositing")

        if let inputImage = inputImage {
            self.inputImage = inputImage
        }
        if let inputBackgroundImage = inputBackgroundImage {
            self.inputBackgroundImage = inputBackgroundImage
        }
    }


    /// The image to use as an input image. For filters that also use a background image, this is the foreground image.
    public var inputImage: CIImage? {
        get {
            return valueForKey("inputImage") as? CIImage
        }
        set {
            setValue(newValue, forKey: "inputImage")
        }
    }

    /// The image to use as a background image.
    public var inputBackgroundImage: CIImage? {
        get {
            return valueForKey("inputBackgroundImage") as? CIImage
        }
        set {
            setValue(newValue, forKey: "inputBackgroundImage")
        }
    }
}

/**
Performs an affine transform on a source image and then clamps the pixels at the edge of the transformed image, extending them outwards. This filter performs similarly to the CIAffineTransform filter except that it produces an image with infinite extent. You can use this filter when you need to blur an image but you want to avoid a soft, black fringe along the edges.

[More Information](http: //developer.apple.com/cgi-bin/apple_ref.cgi?apple_ref=//apple_ref/doc/filter/ci/CIAffineClamp)
*/
public class AffineClamp: Filter {

    let name = "CIAffineClamp"

    public init(inputImage: CIImage? = nil, inputTransform: NSAffineTransform? = nil) {
        super.init(name: "CIAffineClamp")

        if let inputImage = inputImage {
            self.inputImage = inputImage
        }
        if let inputTransform = inputTransform {
            self.inputTransform = inputTransform
        }
    }


    /// The image to use as an input image. For filters that also use a background image, this is the foreground image.
    public var inputImage: CIImage? {
        get {
            return valueForKey("inputImage") as? CIImage
        }
        set {
            setValue(newValue, forKey: "inputImage")
        }
    }

    /// The transform to apply to the image.
    public var inputTransform: NSAffineTransform? {
        get {
            return valueForKey("inputTransform") as? NSAffineTransform
        }
        set {
            setValue(newValue, forKey: "inputTransform")
        }
    }
}

/**
Applies an affine transform to an image and then tiles the transformed image.

[More Information](http: //developer.apple.com/cgi-bin/apple_ref.cgi?apple_ref=//apple_ref/doc/filter/ci/CIAffineTile)
*/
public class AffineTile: Filter {

    let name = "CIAffineTile"

    public init(inputImage: CIImage? = nil, inputTransform: NSAffineTransform? = nil) {
        super.init(name: "CIAffineTile")

        if let inputImage = inputImage {
            self.inputImage = inputImage
        }
        if let inputTransform = inputTransform {
            self.inputTransform = inputTransform
        }
    }


    /// The image to use as an input image. For filters that also use a background image, this is the foreground image.
    public var inputImage: CIImage? {
        get {
            return valueForKey("inputImage") as? CIImage
        }
        set {
            setValue(newValue, forKey: "inputImage")
        }
    }

    /// The transform to apply to the image.
    public var inputTransform: NSAffineTransform? {
        get {
            return valueForKey("inputTransform") as? NSAffineTransform
        }
        set {
            setValue(newValue, forKey: "inputTransform")
        }
    }
}

/**
Applies an affine transform to an image. You can scale, translate, or rotate the input image. You can also apply a combination of these operations.

[More Information](http: //developer.apple.com/cgi-bin/apple_ref.cgi?apple_ref=//apple_ref/doc/filter/ci/CIAffineTransform)
*/
public class AffineTransform: Filter {

    let name = "CIAffineTransform"

    public init(inputImage: CIImage? = nil, inputTransform: NSAffineTransform? = nil) {
        super.init(name: "CIAffineTransform")

        if let inputImage = inputImage {
            self.inputImage = inputImage
        }
        if let inputTransform = inputTransform {
            self.inputTransform = inputTransform
        }
    }


    /// The image to use as an input image. For filters that also use a background image, this is the foreground image.
    public var inputImage: CIImage? {
        get {
            return valueForKey("inputImage") as? CIImage
        }
        set {
            setValue(newValue, forKey: "inputImage")
        }
    }

    /// A transform to apply to the image.
    public var inputTransform: NSAffineTransform? {
        get {
            return valueForKey("inputTransform") as? NSAffineTransform
        }
        set {
            setValue(newValue, forKey: "inputTransform")
        }
    }
}

/**
Calculates the average color for the specified area in an image, returning the result in a pixel.

[More Information](http: //developer.apple.com/cgi-bin/apple_ref.cgi?apple_ref=//apple_ref/doc/filter/ci/CIAreaAverage)
*/
public class AreaAverage: Filter {

    let name = "CIAreaAverage"

    public init(inputImage: CIImage? = nil, inputExtent: CIVector? = nil) {
        super.init(name: "CIAreaAverage")

        if let inputImage = inputImage {
            self.inputImage = inputImage
        }
        if let inputExtent = inputExtent {
            self.inputExtent = inputExtent
        }
    }


    /// The image to process.
    public var inputImage: CIImage? {
        get {
            return valueForKey("inputImage") as? CIImage
        }
        set {
            setValue(newValue, forKey: "inputImage")
        }
    }

    /// A rectangle that specifies the subregion of the image that you want to process.
    public var inputExtent: CIVector? {
        get {
            return valueForKey("inputExtent") as? CIVector
        }
        set {
            setValue(newValue, forKey: "inputExtent")
        }
    }
}

/**
Calculates a histogram for the specified area in an image, returning the result in a 1D image.

[More Information](http: //developer.apple.com/cgi-bin/apple_ref.cgi?apple_ref=//apple_ref/doc/filter/ci/CIAreaHistogram)
*/
public class AreaHistogram: Filter {

    let name = "CIAreaHistogram"

    public init(inputImage: CIImage? = nil, inputExtent: CIVector? = nil, inputScale: CGFloat? = nil, inputCount: CGFloat? = nil) {
        super.init(name: "CIAreaHistogram")

        if let inputImage = inputImage {
            self.inputImage = inputImage
        }
        if let inputExtent = inputExtent {
            self.inputExtent = inputExtent
        }
        if let inputScale = inputScale {
            self.inputScale = inputScale
        }
        if let inputCount = inputCount {
            self.inputCount = inputCount
        }
    }


    /// The image whose histogram you want to calculate.
    public var inputImage: CIImage? {
        get {
            return valueForKey("inputImage") as? CIImage
        }
        set {
            setValue(newValue, forKey: "inputImage")
        }
    }

    /// A rectangle that specifies the subregion of the image that you want to process.
    public var inputExtent: CIVector? {
        get {
            return valueForKey("inputExtent") as? CIVector
        }
        set {
            setValue(newValue, forKey: "inputExtent")
        }
    }

    /// The scale value to use for the histogram values.
    public var inputScale: CGFloat? {
        get {
            return valueForKey("inputScale") as? CGFloat
        }
        set {
            setValue(newValue, forKey: "inputScale")
        }
    }

    /// The number of bins for the histogram.
    public var inputCount: CGFloat? {
        get {
            return valueForKey("inputCount") as? CGFloat
        }
        set {
            setValue(newValue, forKey: "inputCount")
        }
    }
}

/**
Calculates the maximum component values for the specified area in an image, returning the result in a pixel.

[More Information](http: //developer.apple.com/cgi-bin/apple_ref.cgi?apple_ref=//apple_ref/doc/filter/ci/CIAreaMaximum)
*/
public class AreaMaximum: Filter {

    let name = "CIAreaMaximum"

    public init(inputImage: CIImage? = nil, inputExtent: CIVector? = nil) {
        super.init(name: "CIAreaMaximum")

        if let inputImage = inputImage {
            self.inputImage = inputImage
        }
        if let inputExtent = inputExtent {
            self.inputExtent = inputExtent
        }
    }


    /// The image to process.
    public var inputImage: CIImage? {
        get {
            return valueForKey("inputImage") as? CIImage
        }
        set {
            setValue(newValue, forKey: "inputImage")
        }
    }

    /// A rectangle that specifies the subregion of the image that you want to process.
    public var inputExtent: CIVector? {
        get {
            return valueForKey("inputExtent") as? CIVector
        }
        set {
            setValue(newValue, forKey: "inputExtent")
        }
    }
}

/**
Finds and returns the pixel with the maximum alpha value.

[More Information](http: //developer.apple.com/cgi-bin/apple_ref.cgi?apple_ref=//apple_ref/doc/filter/ci/CIAreaMaximumAlpha)
*/
public class AreaMaximumAlpha: Filter {

    let name = "CIAreaMaximumAlpha"

    public init(inputImage: CIImage? = nil, inputExtent: CIVector? = nil) {
        super.init(name: "CIAreaMaximumAlpha")

        if let inputImage = inputImage {
            self.inputImage = inputImage
        }
        if let inputExtent = inputExtent {
            self.inputExtent = inputExtent
        }
    }


    /// The image to process.
    public var inputImage: CIImage? {
        get {
            return valueForKey("inputImage") as? CIImage
        }
        set {
            setValue(newValue, forKey: "inputImage")
        }
    }

    /// A rectangle that specifies the subregion of the image that you want to process.
    public var inputExtent: CIVector? {
        get {
            return valueForKey("inputExtent") as? CIVector
        }
        set {
            setValue(newValue, forKey: "inputExtent")
        }
    }
}

/**
Calculates the minimum component values for the specified area in an image, returning the result in a pixel.

[More Information](http: //developer.apple.com/cgi-bin/apple_ref.cgi?apple_ref=//apple_ref/doc/filter/ci/CIAreaMinimum)
*/
public class AreaMinimum: Filter {

    let name = "CIAreaMinimum"

    public init(inputImage: CIImage? = nil, inputExtent: CIVector? = nil) {
        super.init(name: "CIAreaMinimum")

        if let inputImage = inputImage {
            self.inputImage = inputImage
        }
        if let inputExtent = inputExtent {
            self.inputExtent = inputExtent
        }
    }


    /// The image to process.
    public var inputImage: CIImage? {
        get {
            return valueForKey("inputImage") as? CIImage
        }
        set {
            setValue(newValue, forKey: "inputImage")
        }
    }

    /// A rectangle that specifies the subregion of the image that you want to process.
    public var inputExtent: CIVector? {
        get {
            return valueForKey("inputExtent") as? CIVector
        }
        set {
            setValue(newValue, forKey: "inputExtent")
        }
    }
}

/**
Finds and returns the pixel with the minimum alpha value.

[More Information](http: //developer.apple.com/cgi-bin/apple_ref.cgi?apple_ref=//apple_ref/doc/filter/ci/CIAreaMinimumAlpha)
*/
public class AreaMinimumAlpha: Filter {

    let name = "CIAreaMinimumAlpha"

    public init(inputImage: CIImage? = nil, inputExtent: CIVector? = nil) {
        super.init(name: "CIAreaMinimumAlpha")

        if let inputImage = inputImage {
            self.inputImage = inputImage
        }
        if let inputExtent = inputExtent {
            self.inputExtent = inputExtent
        }
    }


    /// The image to process.
    public var inputImage: CIImage? {
        get {
            return valueForKey("inputImage") as? CIImage
        }
        set {
            setValue(newValue, forKey: "inputImage")
        }
    }

    /// A rectangle that specifies the subregion of the image that you want to process.
    public var inputExtent: CIVector? {
        get {
            return valueForKey("inputExtent") as? CIVector
        }
        set {
            setValue(newValue, forKey: "inputExtent")
        }
    }
}

/**
Aztec Code Generator

[More Information](http: //developer.apple.com/cgi-bin/apple_ref.cgi?apple_ref=//apple_ref/doc/filter/ci/CIAztecCodeGenerator)
*/
public class AztecCodeGenerator: Filter {

    let name = "CIAztecCodeGenerator"

    public init(inputMessage: NSData? = nil, inputCorrectionLevel: CGFloat? = nil, inputLayers: CGFloat? = nil, inputCompactStyle: CGFloat? = nil) {
        super.init(name: "CIAztecCodeGenerator")

        if let inputMessage = inputMessage {
            self.inputMessage = inputMessage
        }
        if let inputCorrectionLevel = inputCorrectionLevel {
            self.inputCorrectionLevel = inputCorrectionLevel
        }
        if let inputLayers = inputLayers {
            self.inputLayers = inputLayers
        }
        if let inputCompactStyle = inputCompactStyle {
            self.inputCompactStyle = inputCompactStyle
        }
    }


    public var inputMessage: NSData? {
        get {
            return valueForKey("inputMessage") as? NSData
        }
        set {
            setValue(newValue, forKey: "inputMessage")
        }
    }

    /// Aztec error correction value between 5 and 95
    public var inputCorrectionLevel: CGFloat? {
        get {
            return valueForKey("inputCorrectionLevel") as? CGFloat
        }
        set {
            setValue(newValue, forKey: "inputCorrectionLevel")
        }
    }

    /// Aztec layers value between 1 and 32. Set to nil for automatic.
    public var inputLayers: CGFloat? {
        get {
            return valueForKey("inputLayers") as? CGFloat
        }
        set {
            setValue(newValue, forKey: "inputLayers")
        }
    }

    /// Aztec force compact style @YES or @NO. Set to nil for automatic.
    public var inputCompactStyle: CGFloat? {
        get {
            return valueForKey("inputCompactStyle") as? CGFloat
        }
        set {
            setValue(newValue, forKey: "inputCompactStyle")
        }
    }
}

/**
Transitions from one image to another by swiping rectangular portions of the foreground image to disclose the target image.

[More Information](http: //developer.apple.com/cgi-bin/apple_ref.cgi?apple_ref=//apple_ref/doc/filter/ci/CIBarsSwipeTransition)
*/
public class BarsSwipeTransition: Filter {

    let name = "CIBarsSwipeTransition"

    public init(inputImage: CIImage? = nil, inputTargetImage: CIImage? = nil, inputAngle: CGFloat? = nil, inputWidth: CGFloat? = nil, inputBarOffset: CGFloat? = nil, inputTime: CGFloat? = nil) {
        super.init(name: "CIBarsSwipeTransition")

        if let inputImage = inputImage {
            self.inputImage = inputImage
        }
        if let inputTargetImage = inputTargetImage {
            self.inputTargetImage = inputTargetImage
        }
        if let inputAngle = inputAngle {
            self.inputAngle = inputAngle
        }
        if let inputWidth = inputWidth {
            self.inputWidth = inputWidth
        }
        if let inputBarOffset = inputBarOffset {
            self.inputBarOffset = inputBarOffset
        }
        if let inputTime = inputTime {
            self.inputTime = inputTime
        }
    }


    /// The image to use as an input image. For filters that also use a background image, this is the foreground image.
    public var inputImage: CIImage? {
        get {
            return valueForKey("inputImage") as? CIImage
        }
        set {
            setValue(newValue, forKey: "inputImage")
        }
    }

    /// The target image for a transition.
    public var inputTargetImage: CIImage? {
        get {
            return valueForKey("inputTargetImage") as? CIImage
        }
        set {
            setValue(newValue, forKey: "inputTargetImage")
        }
    }

    /// The angle (in radians) of the bars.
    public var inputAngle: CGFloat? {
        get {
            return valueForKey("inputAngle") as? CGFloat
        }
        set {
            setValue(newValue, forKey: "inputAngle")
        }
    }

    /// The width of each bar.
    public var inputWidth: CGFloat? {
        get {
            return valueForKey("inputWidth") as? CGFloat
        }
        set {
            setValue(newValue, forKey: "inputWidth")
        }
    }

    /// The offset of one bar with respect to another
    public var inputBarOffset: CGFloat? {
        get {
            return valueForKey("inputBarOffset") as? CGFloat
        }
        set {
            setValue(newValue, forKey: "inputBarOffset")
        }
    }

    /// The parametric time of the transition. This value drives the transition from start (at time 0) to end (at time 1).
    public var inputTime: CGFloat? {
        get {
            return valueForKey("inputTime") as? CGFloat
        }
        set {
            setValue(newValue, forKey: "inputTime")
        }
    }
}

/**
Uses values from a grayscale mask to interpolate between an image and the background. When a mask alpha value is 0.0, the result is the background. When the mask alpha value is 1.0, the result is the image.

[More Information](http: //developer.apple.com/cgi-bin/apple_ref.cgi?apple_ref=//apple_ref/doc/filter/ci/CIBlendWithAlphaMask)
*/
public class BlendWithAlphaMask: Filter {

    let name = "CIBlendWithAlphaMask"

    public init(inputImage: CIImage? = nil, inputBackgroundImage: CIImage? = nil, inputMaskImage: CIImage? = nil) {
        super.init(name: "CIBlendWithAlphaMask")

        if let inputImage = inputImage {
            self.inputImage = inputImage
        }
        if let inputBackgroundImage = inputBackgroundImage {
            self.inputBackgroundImage = inputBackgroundImage
        }
        if let inputMaskImage = inputMaskImage {
            self.inputMaskImage = inputMaskImage
        }
    }


    /// The image to use as an input image. For filters that also use a background image, this is the foreground image.
    public var inputImage: CIImage? {
        get {
            return valueForKey("inputImage") as? CIImage
        }
        set {
            setValue(newValue, forKey: "inputImage")
        }
    }

    /// The image to use as a background image.
    public var inputBackgroundImage: CIImage? {
        get {
            return valueForKey("inputBackgroundImage") as? CIImage
        }
        set {
            setValue(newValue, forKey: "inputBackgroundImage")
        }
    }

    /// A masking image.
    public var inputMaskImage: CIImage? {
        get {
            return valueForKey("inputMaskImage") as? CIImage
        }
        set {
            setValue(newValue, forKey: "inputMaskImage")
        }
    }
}

/**
Uses values from a grayscale mask to interpolate between an image and the background. When a mask green value is 0.0, the result is the background. When the mask green value is 1.0, the result is the image.

[More Information](http: //developer.apple.com/cgi-bin/apple_ref.cgi?apple_ref=//apple_ref/doc/filter/ci/CIBlendWithMask)
*/
public class BlendWithMask: Filter {

    let name = "CIBlendWithMask"

    public init(inputImage: CIImage? = nil, inputBackgroundImage: CIImage? = nil, inputMaskImage: CIImage? = nil) {
        super.init(name: "CIBlendWithMask")

        if let inputImage = inputImage {
            self.inputImage = inputImage
        }
        if let inputBackgroundImage = inputBackgroundImage {
            self.inputBackgroundImage = inputBackgroundImage
        }
        if let inputMaskImage = inputMaskImage {
            self.inputMaskImage = inputMaskImage
        }
    }


    /// The image to use as a foreground image.
    public var inputImage: CIImage? {
        get {
            return valueForKey("inputImage") as? CIImage
        }
        set {
            setValue(newValue, forKey: "inputImage")
        }
    }

    /// The image to use as a background image.
    public var inputBackgroundImage: CIImage? {
        get {
            return valueForKey("inputBackgroundImage") as? CIImage
        }
        set {
            setValue(newValue, forKey: "inputBackgroundImage")
        }
    }

    /// A grayscale mask. When a mask value is 0.0, the result is the background. When the mask value is 1.0, the result is the image.
    public var inputMaskImage: CIImage? {
        get {
            return valueForKey("inputMaskImage") as? CIImage
        }
        set {
            setValue(newValue, forKey: "inputMaskImage")
        }
    }
}

/**
Softens edges and applies a pleasant glow to an image.

[More Information](http: //developer.apple.com/cgi-bin/apple_ref.cgi?apple_ref=//apple_ref/doc/filter/ci/CIBloom)
*/
public class Bloom: Filter {

    let name = "CIBloom"

    public init(inputImage: CIImage? = nil, inputRadius: CGFloat? = nil, inputIntensity: CGFloat? = nil) {
        super.init(name: "CIBloom")

        if let inputImage = inputImage {
            self.inputImage = inputImage
        }
        if let inputRadius = inputRadius {
            self.inputRadius = inputRadius
        }
        if let inputIntensity = inputIntensity {
            self.inputIntensity = inputIntensity
        }
    }


    /// The image to use as an input image. For filters that also use a background image, this is the foreground image.
    public var inputImage: CIImage? {
        get {
            return valueForKey("inputImage") as? CIImage
        }
        set {
            setValue(newValue, forKey: "inputImage")
        }
    }

    /// The radius determines how many pixels are used to create the effect. The larger the radius, the greater the effect.
    public var inputRadius: CGFloat? {
        get {
            return valueForKey("inputRadius") as? CGFloat
        }
        set {
            setValue(newValue, forKey: "inputRadius")
        }
    }

    /// The intensity of the effect. A value of 0.0 is no effect. A value of 1.0 is the maximum effect.
    public var inputIntensity: CGFloat? {
        get {
            return valueForKey("inputIntensity") as? CGFloat
        }
        set {
            setValue(newValue, forKey: "inputIntensity")
        }
    }
}

/**
Smooths or sharpens an image using a box-shaped convolution kernel.

[More Information](http: //developer.apple.com/cgi-bin/apple_ref.cgi?apple_ref=//apple_ref/doc/filter/ci/CIBoxBlur)
*/
public class BoxBlur: Filter {

    let name = "CIBoxBlur"

    public init(inputImage: CIImage? = nil, inputRadius: CGFloat? = nil) {
        super.init(name: "CIBoxBlur")

        if let inputImage = inputImage {
            self.inputImage = inputImage
        }
        if let inputRadius = inputRadius {
            self.inputRadius = inputRadius
        }
    }


    /// The image to use as an input image. For filters that also use a background image, this is the foreground image.
    public var inputImage: CIImage? {
        get {
            return valueForKey("inputImage") as? CIImage
        }
        set {
            setValue(newValue, forKey: "inputImage")
        }
    }

    /// The radius determines how many pixels are used to create the blur. The larger the radius, the blurrier the result.
    public var inputRadius: CGFloat? {
        get {
            return valueForKey("inputRadius") as? CGFloat
        }
        set {
            setValue(newValue, forKey: "inputRadius")
        }
    }
}

/**
Creates a concave or convex bump that originates at a specified point in the image.

[More Information](http: //developer.apple.com/cgi-bin/apple_ref.cgi?apple_ref=//apple_ref/doc/filter/ci/CIBumpDistortion)
*/
public class BumpDistortion: Filter {

    let name = "CIBumpDistortion"

    public init(inputImage: CIImage? = nil, inputCenter: CIVector? = nil, inputRadius: CGFloat? = nil, inputScale: CGFloat? = nil) {
        super.init(name: "CIBumpDistortion")

        if let inputImage = inputImage {
            self.inputImage = inputImage
        }
        if let inputCenter = inputCenter {
            self.inputCenter = inputCenter
        }
        if let inputRadius = inputRadius {
            self.inputRadius = inputRadius
        }
        if let inputScale = inputScale {
            self.inputScale = inputScale
        }
    }


    /// The image to use as an input image. For filters that also use a background image, this is the foreground image.
    public var inputImage: CIImage? {
        get {
            return valueForKey("inputImage") as? CIImage
        }
        set {
            setValue(newValue, forKey: "inputImage")
        }
    }

    /// The center of the effect as x and y coordinates.
    public var inputCenter: CIVector? {
        get {
            return valueForKey("inputCenter") as? CIVector
        }
        set {
            setValue(newValue, forKey: "inputCenter")
        }
    }

    /// The radius determines how many pixels are used to create the distortion. The larger the radius, wider the extent of the distortion.
    public var inputRadius: CGFloat? {
        get {
            return valueForKey("inputRadius") as? CGFloat
        }
        set {
            setValue(newValue, forKey: "inputRadius")
        }
    }

    /// The scale of the effect determines the curvature of the bump. A value of 0.0 has no effect. Positive values create an outward bump; negative values create an inward bump.
    public var inputScale: CGFloat? {
        get {
            return valueForKey("inputScale") as? CGFloat
        }
        set {
            setValue(newValue, forKey: "inputScale")
        }
    }
}

/**
Creates a bump that originates from a linear portion of the image.

[More Information](http: //developer.apple.com/cgi-bin/apple_ref.cgi?apple_ref=//apple_ref/doc/filter/ci/CIBumpDistortionLinear)
*/
public class BumpDistortionLinear: Filter {

    let name = "CIBumpDistortionLinear"

    public init(inputImage: CIImage? = nil, inputCenter: CIVector? = nil, inputRadius: CGFloat? = nil, inputAngle: CGFloat? = nil, inputScale: CGFloat? = nil) {
        super.init(name: "CIBumpDistortionLinear")

        if let inputImage = inputImage {
            self.inputImage = inputImage
        }
        if let inputCenter = inputCenter {
            self.inputCenter = inputCenter
        }
        if let inputRadius = inputRadius {
            self.inputRadius = inputRadius
        }
        if let inputAngle = inputAngle {
            self.inputAngle = inputAngle
        }
        if let inputScale = inputScale {
            self.inputScale = inputScale
        }
    }


    /// The image to use as an input image. For filters that also use a background image, this is the foreground image.
    public var inputImage: CIImage? {
        get {
            return valueForKey("inputImage") as? CIImage
        }
        set {
            setValue(newValue, forKey: "inputImage")
        }
    }

    /// The center of the effect as x and y coordinates.
    public var inputCenter: CIVector? {
        get {
            return valueForKey("inputCenter") as? CIVector
        }
        set {
            setValue(newValue, forKey: "inputCenter")
        }
    }

    /// The radius determines how many pixels are used to create the distortion. The larger the radius, wider the extent of the distortion.
    public var inputRadius: CGFloat? {
        get {
            return valueForKey("inputRadius") as? CGFloat
        }
        set {
            setValue(newValue, forKey: "inputRadius")
        }
    }

    /// The angle (in radians) of the line around which the distortion occurs.
    public var inputAngle: CGFloat? {
        get {
            return valueForKey("inputAngle") as? CGFloat
        }
        set {
            setValue(newValue, forKey: "inputAngle")
        }
    }

    /// The scale of the effect.
    public var inputScale: CGFloat? {
        get {
            return valueForKey("inputScale") as? CGFloat
        }
        set {
            setValue(newValue, forKey: "inputScale")
        }
    }
}

/**
Generates a checkerboard pattern. You can specify the checkerboard size and colors, and the sharpness of the pattern.

[More Information](http: //developer.apple.com/cgi-bin/apple_ref.cgi?apple_ref=//apple_ref/doc/filter/ci/CICheckerboardGenerator)
*/
public class CheckerboardGenerator: Filter {

    let name = "CICheckerboardGenerator"

    public init(inputCenter: CIVector? = nil, inputColor0: CIColor? = nil, inputColor1: CIColor? = nil, inputWidth: CGFloat? = nil, inputSharpness: CGFloat? = nil) {
        super.init(name: "CICheckerboardGenerator")

        if let inputCenter = inputCenter {
            self.inputCenter = inputCenter
        }
        if let inputColor0 = inputColor0 {
            self.inputColor0 = inputColor0
        }
        if let inputColor1 = inputColor1 {
            self.inputColor1 = inputColor1
        }
        if let inputWidth = inputWidth {
            self.inputWidth = inputWidth
        }
        if let inputSharpness = inputSharpness {
            self.inputSharpness = inputSharpness
        }
    }


    /// The center of the effect as x and y coordinates.
    public var inputCenter: CIVector? {
        get {
            return valueForKey("inputCenter") as? CIVector
        }
        set {
            setValue(newValue, forKey: "inputCenter")
        }
    }

    /// A color to use for the first set of the checkerboard squares.
    public var inputColor0: CIColor? {
        get {
            return valueForKey("inputColor0") as? CIColor
        }
        set {
            setValue(newValue, forKey: "inputColor0")
        }
    }

    /// A color to use for the second set of the checkerboard squares.
    public var inputColor1: CIColor? {
        get {
            return valueForKey("inputColor1") as? CIColor
        }
        set {
            setValue(newValue, forKey: "inputColor1")
        }
    }

    /// The width of a square in the checkerboard pattern.
    public var inputWidth: CGFloat? {
        get {
            return valueForKey("inputWidth") as? CGFloat
        }
        set {
            setValue(newValue, forKey: "inputWidth")
        }
    }

    /// The sharpness of the checkerboard pattern. The smaller the value, the more blurry the pattern. Values range from 0.0 to 1.0.
    public var inputSharpness: CGFloat? {
        get {
            return valueForKey("inputSharpness") as? CGFloat
        }
        set {
            setValue(newValue, forKey: "inputSharpness")
        }
    }
}

/**
Distorts the pixels starting at the circumference of a circle and emanating outward.

[More Information](http: //developer.apple.com/cgi-bin/apple_ref.cgi?apple_ref=//apple_ref/doc/filter/ci/CICircleSplashDistortion)
*/
public class CircleSplashDistortion: Filter {

    let name = "CICircleSplashDistortion"

    public init(inputImage: CIImage? = nil, inputCenter: CIVector? = nil, inputRadius: CGFloat? = nil) {
        super.init(name: "CICircleSplashDistortion")

        if let inputImage = inputImage {
            self.inputImage = inputImage
        }
        if let inputCenter = inputCenter {
            self.inputCenter = inputCenter
        }
        if let inputRadius = inputRadius {
            self.inputRadius = inputRadius
        }
    }


    /// The image to use as an input image. For filters that also use a background image, this is the foreground image.
    public var inputImage: CIImage? {
        get {
            return valueForKey("inputImage") as? CIImage
        }
        set {
            setValue(newValue, forKey: "inputImage")
        }
    }

    /// The center of the effect as x and y coordinates.
    public var inputCenter: CIVector? {
        get {
            return valueForKey("inputCenter") as? CIVector
        }
        set {
            setValue(newValue, forKey: "inputCenter")
        }
    }

    /// The radius determines how many pixels are used to create the distortion. The larger the radius, wider the extent of the distortion.
    public var inputRadius: CGFloat? {
        get {
            return valueForKey("inputRadius") as? CGFloat
        }
        set {
            setValue(newValue, forKey: "inputRadius")
        }
    }
}

/**
Simulates a circular-shaped halftone screen.

[More Information](http: //developer.apple.com/cgi-bin/apple_ref.cgi?apple_ref=//apple_ref/doc/filter/ci/CICircularScreen)
*/
public class CircularScreen: Filter {

    let name = "CICircularScreen"

    public init(inputImage: CIImage? = nil, inputCenter: CIVector? = nil, inputWidth: CGFloat? = nil, inputSharpness: CGFloat? = nil) {
        super.init(name: "CICircularScreen")

        if let inputImage = inputImage {
            self.inputImage = inputImage
        }
        if let inputCenter = inputCenter {
            self.inputCenter = inputCenter
        }
        if let inputWidth = inputWidth {
            self.inputWidth = inputWidth
        }
        if let inputSharpness = inputSharpness {
            self.inputSharpness = inputSharpness
        }
    }


    /// The image to use as an input image. For filters that also use a background image, this is the foreground image.
    public var inputImage: CIImage? {
        get {
            return valueForKey("inputImage") as? CIImage
        }
        set {
            setValue(newValue, forKey: "inputImage")
        }
    }

    /// The x and y position to use as the center of the circular screen pattern
    public var inputCenter: CIVector? {
        get {
            return valueForKey("inputCenter") as? CIVector
        }
        set {
            setValue(newValue, forKey: "inputCenter")
        }
    }

    /// The distance between each circle in the pattern.
    public var inputWidth: CGFloat? {
        get {
            return valueForKey("inputWidth") as? CGFloat
        }
        set {
            setValue(newValue, forKey: "inputWidth")
        }
    }

    /// The sharpness of the circles. The larger the value, the sharper the circles.
    public var inputSharpness: CGFloat? {
        get {
            return valueForKey("inputSharpness") as? CGFloat
        }
        set {
            setValue(newValue, forKey: "inputSharpness")
        }
    }
}

/**
Wraps an image around a transparent circle. The distortion of the image increases with the distance from the center of the circle.

[More Information](http: //developer.apple.com/cgi-bin/apple_ref.cgi?apple_ref=//apple_ref/doc/filter/ci/CICircularWrap)
*/
public class CircularWrap: Filter {

    let name = "CICircularWrap"

    public init(inputImage: CIImage? = nil, inputCenter: CIVector? = nil, inputRadius: CGFloat? = nil, inputAngle: CGFloat? = nil) {
        super.init(name: "CICircularWrap")

        if let inputImage = inputImage {
            self.inputImage = inputImage
        }
        if let inputCenter = inputCenter {
            self.inputCenter = inputCenter
        }
        if let inputRadius = inputRadius {
            self.inputRadius = inputRadius
        }
        if let inputAngle = inputAngle {
            self.inputAngle = inputAngle
        }
    }


    /// The image to use as an input image. For filters that also use a background image, this is the foreground image.
    public var inputImage: CIImage? {
        get {
            return valueForKey("inputImage") as? CIImage
        }
        set {
            setValue(newValue, forKey: "inputImage")
        }
    }

    /// The center of the effect as x and y coordinates.
    public var inputCenter: CIVector? {
        get {
            return valueForKey("inputCenter") as? CIVector
        }
        set {
            setValue(newValue, forKey: "inputCenter")
        }
    }

    /// The radius determines how many pixels are used to create the distortion. The larger the radius, wider the extent of the distortion.
    public var inputRadius: CGFloat? {
        get {
            return valueForKey("inputRadius") as? CGFloat
        }
        set {
            setValue(newValue, forKey: "inputRadius")
        }
    }

    /// The angle of the effect.
    public var inputAngle: CGFloat? {
        get {
            return valueForKey("inputAngle") as? CGFloat
        }
        set {
            setValue(newValue, forKey: "inputAngle")
        }
    }
}

/**
Creates a color, halftoned rendition of the source image, using cyan, magenta, yellow, and black inks over a white page.

[More Information](http: //developer.apple.com/cgi-bin/apple_ref.cgi?apple_ref=//apple_ref/doc/filter/ci/CICMYKHalftone)
*/
public class CMYKHalftone: Filter {

    let name = "CICMYKHalftone"

    public init(inputImage: CIImage? = nil, inputCenter: CIVector? = nil, inputWidth: CGFloat? = nil, inputAngle: CGFloat? = nil, inputSharpness: CGFloat? = nil, inputGCR: CGFloat? = nil, inputUCR: CGFloat? = nil) {
        super.init(name: "CICMYKHalftone")

        if let inputImage = inputImage {
            self.inputImage = inputImage
        }
        if let inputCenter = inputCenter {
            self.inputCenter = inputCenter
        }
        if let inputWidth = inputWidth {
            self.inputWidth = inputWidth
        }
        if let inputAngle = inputAngle {
            self.inputAngle = inputAngle
        }
        if let inputSharpness = inputSharpness {
            self.inputSharpness = inputSharpness
        }
        if let inputGCR = inputGCR {
            self.inputGCR = inputGCR
        }
        if let inputUCR = inputUCR {
            self.inputUCR = inputUCR
        }
    }


    /// The image to use as an input image. For filters that also use a background image, this is the foreground image.
    public var inputImage: CIImage? {
        get {
            return valueForKey("inputImage") as? CIImage
        }
        set {
            setValue(newValue, forKey: "inputImage")
        }
    }

    /// The x and y position to use as the center of the halftone pattern
    public var inputCenter: CIVector? {
        get {
            return valueForKey("inputCenter") as? CIVector
        }
        set {
            setValue(newValue, forKey: "inputCenter")
        }
    }

    /// The distance between dots in the pattern.
    public var inputWidth: CGFloat? {
        get {
            return valueForKey("inputWidth") as? CGFloat
        }
        set {
            setValue(newValue, forKey: "inputWidth")
        }
    }

    /// The angle of the pattern.
    public var inputAngle: CGFloat? {
        get {
            return valueForKey("inputAngle") as? CGFloat
        }
        set {
            setValue(newValue, forKey: "inputAngle")
        }
    }

    /// The sharpness of the pattern. The larger the value, the sharper the pattern.
    public var inputSharpness: CGFloat? {
        get {
            return valueForKey("inputSharpness") as? CGFloat
        }
        set {
            setValue(newValue, forKey: "inputSharpness")
        }
    }

    /// The gray component replacement value. The value can vary from 0.0 (none) to 1.0.
    public var inputGCR: CGFloat? {
        get {
            return valueForKey("inputGCR") as? CGFloat
        }
        set {
            setValue(newValue, forKey: "inputGCR")
        }
    }

    /// The under color removal value. The value can vary from 0.0 to 1.0.
    public var inputUCR: CGFloat? {
        get {
            return valueForKey("inputUCR") as? CGFloat
        }
        set {
            setValue(newValue, forKey: "inputUCR")
        }
    }
}

/**
Code128 Barcode Generator

[More Information](http: //developer.apple.com/cgi-bin/apple_ref.cgi?apple_ref=//apple_ref/doc/filter/ci/CICode128BarcodeGenerator)
*/
public class Code128BarcodeGenerator: Filter {

    let name = "CICode128BarcodeGenerator"

    public init(inputMessage: NSData? = nil, inputQuietSpace: CGFloat? = nil) {
        super.init(name: "CICode128BarcodeGenerator")

        if let inputMessage = inputMessage {
            self.inputMessage = inputMessage
        }
        if let inputQuietSpace = inputQuietSpace {
            self.inputQuietSpace = inputQuietSpace
        }
    }


    public var inputMessage: NSData? {
        get {
            return valueForKey("inputMessage") as? NSData
        }
        set {
            setValue(newValue, forKey: "inputMessage")
        }
    }

    public var inputQuietSpace: CGFloat? {
        get {
            return valueForKey("inputQuietSpace") as? CGFloat
        }
        set {
            setValue(newValue, forKey: "inputQuietSpace")
        }
    }
}

/**
Uses the luminance values of the background with the hue and saturation values of the source image. This mode preserves the gray levels in the image.

[More Information](http: //developer.apple.com/cgi-bin/apple_ref.cgi?apple_ref=//apple_ref/doc/filter/ci/CIColorBlendMode)
*/
public class ColorBlendMode: Filter {

    let name = "CIColorBlendMode"

    public init(inputImage: CIImage? = nil, inputBackgroundImage: CIImage? = nil) {
        super.init(name: "CIColorBlendMode")

        if let inputImage = inputImage {
            self.inputImage = inputImage
        }
        if let inputBackgroundImage = inputBackgroundImage {
            self.inputBackgroundImage = inputBackgroundImage
        }
    }


    /// The image to use as an input image. For filters that also use a background image, this is the foreground image.
    public var inputImage: CIImage? {
        get {
            return valueForKey("inputImage") as? CIImage
        }
        set {
            setValue(newValue, forKey: "inputImage")
        }
    }

    /// The image to use as a background image.
    public var inputBackgroundImage: CIImage? {
        get {
            return valueForKey("inputBackgroundImage") as? CIImage
        }
        set {
            setValue(newValue, forKey: "inputBackgroundImage")
        }
    }
}

/**
Darkens the background image samples to reflect the source image samples. Source image sample values that specify white do not produce a change.

[More Information](http: //developer.apple.com/cgi-bin/apple_ref.cgi?apple_ref=//apple_ref/doc/filter/ci/CIColorBurnBlendMode)
*/
public class ColorBurnBlendMode: Filter {

    let name = "CIColorBurnBlendMode"

    public init(inputImage: CIImage? = nil, inputBackgroundImage: CIImage? = nil) {
        super.init(name: "CIColorBurnBlendMode")

        if let inputImage = inputImage {
            self.inputImage = inputImage
        }
        if let inputBackgroundImage = inputBackgroundImage {
            self.inputBackgroundImage = inputBackgroundImage
        }
    }


    /// The image to use as an input image. For filters that also use a background image, this is the foreground image.
    public var inputImage: CIImage? {
        get {
            return valueForKey("inputImage") as? CIImage
        }
        set {
            setValue(newValue, forKey: "inputImage")
        }
    }

    /// The image to use as a background image.
    public var inputBackgroundImage: CIImage? {
        get {
            return valueForKey("inputBackgroundImage") as? CIImage
        }
        set {
            setValue(newValue, forKey: "inputBackgroundImage")
        }
    }
}

/**
Clamp color to a certain range.

[More Information](http: //developer.apple.com/cgi-bin/apple_ref.cgi?apple_ref=//apple_ref/doc/filter/ci/CIColorClamp)
*/
public class ColorClamp: Filter {

    let name = "CIColorClamp"

    public init(inputImage: CIImage? = nil, inputMinComponents: CIVector? = nil, inputMaxComponents: CIVector? = nil) {
        super.init(name: "CIColorClamp")

        if let inputImage = inputImage {
            self.inputImage = inputImage
        }
        if let inputMinComponents = inputMinComponents {
            self.inputMinComponents = inputMinComponents
        }
        if let inputMaxComponents = inputMaxComponents {
            self.inputMaxComponents = inputMaxComponents
        }
    }


    /// The image to use as an input image. For filters that also use a background image, this is the foreground image.
    public var inputImage: CIImage? {
        get {
            return valueForKey("inputImage") as? CIImage
        }
        set {
            setValue(newValue, forKey: "inputImage")
        }
    }

    /// Lower clamping values
    public var inputMinComponents: CIVector? {
        get {
            return valueForKey("inputMinComponents") as? CIVector
        }
        set {
            setValue(newValue, forKey: "inputMinComponents")
        }
    }

    /// Higher clamping values
    public var inputMaxComponents: CIVector? {
        get {
            return valueForKey("inputMaxComponents") as? CIVector
        }
        set {
            setValue(newValue, forKey: "inputMaxComponents")
        }
    }
}

/**
Adjusts saturation, brightness, and contrast values.

[More Information](http: //developer.apple.com/cgi-bin/apple_ref.cgi?apple_ref=//apple_ref/doc/filter/ci/CIColorControls)
*/
public class ColorControls: Filter {

    let name = "CIColorControls"

    public init(inputImage: CIImage? = nil, inputSaturation: CGFloat? = nil, inputBrightness: CGFloat? = nil, inputContrast: CGFloat? = nil) {
        super.init(name: "CIColorControls")

        if let inputImage = inputImage {
            self.inputImage = inputImage
        }
        if let inputSaturation = inputSaturation {
            self.inputSaturation = inputSaturation
        }
        if let inputBrightness = inputBrightness {
            self.inputBrightness = inputBrightness
        }
        if let inputContrast = inputContrast {
            self.inputContrast = inputContrast
        }
    }


    /// The image to use as an input image. For filters that also use a background image, this is the foreground image.
    public var inputImage: CIImage? {
        get {
            return valueForKey("inputImage") as? CIImage
        }
        set {
            setValue(newValue, forKey: "inputImage")
        }
    }

    /// The amount of saturation to apply. The larger the value, the more saturated the result.
    public var inputSaturation: CGFloat? {
        get {
            return valueForKey("inputSaturation") as? CGFloat
        }
        set {
            setValue(newValue, forKey: "inputSaturation")
        }
    }

    /// The amount of brightness to apply. The larger the value, the brighter the result.
    public var inputBrightness: CGFloat? {
        get {
            return valueForKey("inputBrightness") as? CGFloat
        }
        set {
            setValue(newValue, forKey: "inputBrightness")
        }
    }

    /// The amount of contrast to apply. The larger the value, the more contrast in the resulting image.
    public var inputContrast: CGFloat? {
        get {
            return valueForKey("inputContrast") as? CGFloat
        }
        set {
            setValue(newValue, forKey: "inputContrast")
        }
    }
}

/**
Adjusts the color of an image with polynomials.

[More Information](http: //developer.apple.com/cgi-bin/apple_ref.cgi?apple_ref=//apple_ref/doc/filter/ci/CIColorCrossPolynomial)
*/
public class ColorCrossPolynomial: Filter {

    let name = "CIColorCrossPolynomial"

    public init(inputImage: CIImage? = nil, inputRedCoefficients: CIVector? = nil, inputGreenCoefficients: CIVector? = nil, inputBlueCoefficients: CIVector? = nil) {
        super.init(name: "CIColorCrossPolynomial")

        if let inputImage = inputImage {
            self.inputImage = inputImage
        }
        if let inputRedCoefficients = inputRedCoefficients {
            self.inputRedCoefficients = inputRedCoefficients
        }
        if let inputGreenCoefficients = inputGreenCoefficients {
            self.inputGreenCoefficients = inputGreenCoefficients
        }
        if let inputBlueCoefficients = inputBlueCoefficients {
            self.inputBlueCoefficients = inputBlueCoefficients
        }
    }


    /// The image to use as an input image. For filters that also use a background image, this is the foreground image.
    public var inputImage: CIImage? {
        get {
            return valueForKey("inputImage") as? CIImage
        }
        set {
            setValue(newValue, forKey: "inputImage")
        }
    }

    /// Polynomial coefficients for red channel
    public var inputRedCoefficients: CIVector? {
        get {
            return valueForKey("inputRedCoefficients") as? CIVector
        }
        set {
            setValue(newValue, forKey: "inputRedCoefficients")
        }
    }

    /// Polynomial coefficients for green channel
    public var inputGreenCoefficients: CIVector? {
        get {
            return valueForKey("inputGreenCoefficients") as? CIVector
        }
        set {
            setValue(newValue, forKey: "inputGreenCoefficients")
        }
    }

    /// Polynomial coefficients for blue channel
    public var inputBlueCoefficients: CIVector? {
        get {
            return valueForKey("inputBlueCoefficients") as? CIVector
        }
        set {
            setValue(newValue, forKey: "inputBlueCoefficients")
        }
    }
}

/**
Uses a three-dimensional color table to transform the source image pixels. The color table must be  composed of floating-point RGBA cells that use premultiplied alpha. The cells are organized in a standard ordering. The columns and rows of the data are indexed by red and green, respectively. Each data plane is followed by the next higher plane in the data, with planes indexed by blue.

[More Information](http: //developer.apple.com/cgi-bin/apple_ref.cgi?apple_ref=//apple_ref/doc/filter/ci/CIColorCube)
*/
public class ColorCube: Filter {

    let name = "CIColorCube"

    public init(inputImage: CIImage? = nil, inputCubeDimension: CGFloat? = nil, inputCubeData: NSData? = nil) {
        super.init(name: "CIColorCube")

        if let inputImage = inputImage {
            self.inputImage = inputImage
        }
        if let inputCubeDimension = inputCubeDimension {
            self.inputCubeDimension = inputCubeDimension
        }
        if let inputCubeData = inputCubeData {
            self.inputCubeData = inputCubeData
        }
    }


    /// The image to use as an input image. For filters that also use a background image, this is the foreground image.
    public var inputImage: CIImage? {
        get {
            return valueForKey("inputImage") as? CIImage
        }
        set {
            setValue(newValue, forKey: "inputImage")
        }
    }

    public var inputCubeDimension: CGFloat? {
        get {
            return valueForKey("inputCubeDimension") as? CGFloat
        }
        set {
            setValue(newValue, forKey: "inputCubeDimension")
        }
    }

    /// This is a color table of floating-point RGBA cells that use premultiplied alpha. The cells are organized in a standard ordering. The columns and rows of the data are indexed by red and green, respectively. Each data plane is followed by the next higher plane in the data, with planes indexed by blue.
    public var inputCubeData: NSData? {
        get {
            return valueForKey("inputCubeData") as? NSData
        }
        set {
            setValue(newValue, forKey: "inputCubeData")
        }
    }
}

/**
Color Cube with ColorSpace

[More Information](http: //developer.apple.com/cgi-bin/apple_ref.cgi?apple_ref=//apple_ref/doc/filter/ci/CIColorCubeWithColorSpace)
*/
public class ColorCubeWithColorSpace: Filter {

    let name = "CIColorCubeWithColorSpace"

    public init(inputImage: CIImage? = nil, inputCubeDimension: CGFloat? = nil, inputCubeData: NSData? = nil, inputColorSpace: NSObject? = nil) {
        super.init(name: "CIColorCubeWithColorSpace")

        if let inputImage = inputImage {
            self.inputImage = inputImage
        }
        if let inputCubeDimension = inputCubeDimension {
            self.inputCubeDimension = inputCubeDimension
        }
        if let inputCubeData = inputCubeData {
            self.inputCubeData = inputCubeData
        }
        if let inputColorSpace = inputColorSpace {
            self.inputColorSpace = inputColorSpace
        }
    }


    /// The image to use as an input image. For filters that also use a background image, this is the foreground image.
    public var inputImage: CIImage? {
        get {
            return valueForKey("inputImage") as? CIImage
        }
        set {
            setValue(newValue, forKey: "inputImage")
        }
    }

    public var inputCubeDimension: CGFloat? {
        get {
            return valueForKey("inputCubeDimension") as? CGFloat
        }
        set {
            setValue(newValue, forKey: "inputCubeDimension")
        }
    }

    public var inputCubeData: NSData? {
        get {
            return valueForKey("inputCubeData") as? NSData
        }
        set {
            setValue(newValue, forKey: "inputCubeData")
        }
    }

    public var inputColorSpace: NSObject? {
        get {
            return valueForKey("inputColorSpace") as? NSObject
        }
        set {
            setValue(newValue, forKey: "inputColorSpace")
        }
    }
}

/**
Brightens the background image samples to reflect the source image samples. Source image sample values that specify black do not produce a change.

[More Information](http: //developer.apple.com/cgi-bin/apple_ref.cgi?apple_ref=//apple_ref/doc/filter/ci/CIColorDodgeBlendMode)
*/
public class ColorDodgeBlendMode: Filter {

    let name = "CIColorDodgeBlendMode"

    public init(inputImage: CIImage? = nil, inputBackgroundImage: CIImage? = nil) {
        super.init(name: "CIColorDodgeBlendMode")

        if let inputImage = inputImage {
            self.inputImage = inputImage
        }
        if let inputBackgroundImage = inputBackgroundImage {
            self.inputBackgroundImage = inputBackgroundImage
        }
    }


    /// The image to use as an input image. For filters that also use a background image, this is the foreground image.
    public var inputImage: CIImage? {
        get {
            return valueForKey("inputImage") as? CIImage
        }
        set {
            setValue(newValue, forKey: "inputImage")
        }
    }

    /// The image to use as a background image.
    public var inputBackgroundImage: CIImage? {
        get {
            return valueForKey("inputBackgroundImage") as? CIImage
        }
        set {
            setValue(newValue, forKey: "inputBackgroundImage")
        }
    }
}

/**
Inverts the colors in an image.

[More Information](http: //developer.apple.com/cgi-bin/apple_ref.cgi?apple_ref=//apple_ref/doc/filter/ci/CIColorInvert)
*/
public class ColorInvert: Filter {

    let name = "CIColorInvert"

    public init(inputImage: CIImage? = nil) {
        super.init(name: "CIColorInvert")

        if let inputImage = inputImage {
            self.inputImage = inputImage
        }
    }


    /// The image to use as an input image. For filters that also use a background image, this is the foreground image.
    public var inputImage: CIImage? {
        get {
            return valueForKey("inputImage") as? CIImage
        }
        set {
            setValue(newValue, forKey: "inputImage")
        }
    }
}

/**
Performs a nonlinear transformation of source color values using mapping values provided in a table.

[More Information](http: //developer.apple.com/cgi-bin/apple_ref.cgi?apple_ref=//apple_ref/doc/filter/ci/CIColorMap)
*/
public class ColorMap: Filter {

    let name = "CIColorMap"

    public init(inputImage: CIImage? = nil, inputGradientImage: CIImage? = nil) {
        super.init(name: "CIColorMap")

        if let inputImage = inputImage {
            self.inputImage = inputImage
        }
        if let inputGradientImage = inputGradientImage {
            self.inputGradientImage = inputGradientImage
        }
    }


    /// The image to use as an input image. For filters that also use a background image, this is the foreground image.
    public var inputImage: CIImage? {
        get {
            return valueForKey("inputImage") as? CIImage
        }
        set {
            setValue(newValue, forKey: "inputImage")
        }
    }

    /// The image data from this image transforms the source image values.
    public var inputGradientImage: CIImage? {
        get {
            return valueForKey("inputGradientImage") as? CIImage
        }
        set {
            setValue(newValue, forKey: "inputGradientImage")
        }
    }
}

/**
Multiplies source color values and adds a bias factor to each color component.

[More Information](http: //developer.apple.com/cgi-bin/apple_ref.cgi?apple_ref=//apple_ref/doc/filter/ci/CIColorMatrix)
*/
public class ColorMatrix: Filter {

    let name = "CIColorMatrix"

    public init(inputImage: CIImage? = nil, inputRVector: CIVector? = nil, inputGVector: CIVector? = nil, inputBVector: CIVector? = nil, inputAVector: CIVector? = nil, inputBiasVector: CIVector? = nil) {
        super.init(name: "CIColorMatrix")

        if let inputImage = inputImage {
            self.inputImage = inputImage
        }
        if let inputRVector = inputRVector {
            self.inputRVector = inputRVector
        }
        if let inputGVector = inputGVector {
            self.inputGVector = inputGVector
        }
        if let inputBVector = inputBVector {
            self.inputBVector = inputBVector
        }
        if let inputAVector = inputAVector {
            self.inputAVector = inputAVector
        }
        if let inputBiasVector = inputBiasVector {
            self.inputBiasVector = inputBiasVector
        }
    }


    /// The image to use as an input image. For filters that also use a background image, this is the foreground image.
    public var inputImage: CIImage? {
        get {
            return valueForKey("inputImage") as? CIImage
        }
        set {
            setValue(newValue, forKey: "inputImage")
        }
    }

    /// The amount of red to multiply the source color values by.
    public var inputRVector: CIVector? {
        get {
            return valueForKey("inputRVector") as? CIVector
        }
        set {
            setValue(newValue, forKey: "inputRVector")
        }
    }

    /// The amount of green to multiply the source color values by.
    public var inputGVector: CIVector? {
        get {
            return valueForKey("inputGVector") as? CIVector
        }
        set {
            setValue(newValue, forKey: "inputGVector")
        }
    }

    /// The amount of blue to multiply the source color values by.
    public var inputBVector: CIVector? {
        get {
            return valueForKey("inputBVector") as? CIVector
        }
        set {
            setValue(newValue, forKey: "inputBVector")
        }
    }

    /// The amount of alpha to multiply the source color values by.
    public var inputAVector: CIVector? {
        get {
            return valueForKey("inputAVector") as? CIVector
        }
        set {
            setValue(newValue, forKey: "inputAVector")
        }
    }

    /// A vector that's added to each color component.
    public var inputBiasVector: CIVector? {
        get {
            return valueForKey("inputBiasVector") as? CIVector
        }
        set {
            setValue(newValue, forKey: "inputBiasVector")
        }
    }
}

/**
Remaps colors so they fall within shades of a single color.

[More Information](http: //developer.apple.com/cgi-bin/apple_ref.cgi?apple_ref=//apple_ref/doc/filter/ci/CIColorMonochrome)
*/
public class ColorMonochrome: Filter {

    let name = "CIColorMonochrome"

    public init(inputImage: CIImage? = nil, inputColor: CIColor? = nil, inputIntensity: CGFloat? = nil) {
        super.init(name: "CIColorMonochrome")

        if let inputImage = inputImage {
            self.inputImage = inputImage
        }
        if let inputColor = inputColor {
            self.inputColor = inputColor
        }
        if let inputIntensity = inputIntensity {
            self.inputIntensity = inputIntensity
        }
    }


    /// The image to use as an input image. For filters that also use a background image, this is the foreground image.
    public var inputImage: CIImage? {
        get {
            return valueForKey("inputImage") as? CIImage
        }
        set {
            setValue(newValue, forKey: "inputImage")
        }
    }

    /// The monochrome color to apply to the image.
    public var inputColor: CIColor? {
        get {
            return valueForKey("inputColor") as? CIColor
        }
        set {
            setValue(newValue, forKey: "inputColor")
        }
    }

    /// The intensity of the monochrome effect. A value of 1.0 creates a monochrome image using the supplied color. A value of 0.0 has no effect on the image.
    public var inputIntensity: CGFloat? {
        get {
            return valueForKey("inputIntensity") as? CGFloat
        }
        set {
            setValue(newValue, forKey: "inputIntensity")
        }
    }
}

/**
Adjusts the color of an image with polynomials.

[More Information](http: //developer.apple.com/cgi-bin/apple_ref.cgi?apple_ref=//apple_ref/doc/filter/ci/CIColorPolynomial)
*/
public class ColorPolynomial: Filter {

    let name = "CIColorPolynomial"

    public init(inputImage: CIImage? = nil, inputRedCoefficients: CIVector? = nil, inputGreenCoefficients: CIVector? = nil, inputBlueCoefficients: CIVector? = nil, inputAlphaCoefficients: CIVector? = nil) {
        super.init(name: "CIColorPolynomial")

        if let inputImage = inputImage {
            self.inputImage = inputImage
        }
        if let inputRedCoefficients = inputRedCoefficients {
            self.inputRedCoefficients = inputRedCoefficients
        }
        if let inputGreenCoefficients = inputGreenCoefficients {
            self.inputGreenCoefficients = inputGreenCoefficients
        }
        if let inputBlueCoefficients = inputBlueCoefficients {
            self.inputBlueCoefficients = inputBlueCoefficients
        }
        if let inputAlphaCoefficients = inputAlphaCoefficients {
            self.inputAlphaCoefficients = inputAlphaCoefficients
        }
    }


    /// The image to use as an input image. For filters that also use a background image, this is the foreground image.
    public var inputImage: CIImage? {
        get {
            return valueForKey("inputImage") as? CIImage
        }
        set {
            setValue(newValue, forKey: "inputImage")
        }
    }

    /// Polynomial coefficients for red channel
    public var inputRedCoefficients: CIVector? {
        get {
            return valueForKey("inputRedCoefficients") as? CIVector
        }
        set {
            setValue(newValue, forKey: "inputRedCoefficients")
        }
    }

    /// Polynomial coefficients for green channel
    public var inputGreenCoefficients: CIVector? {
        get {
            return valueForKey("inputGreenCoefficients") as? CIVector
        }
        set {
            setValue(newValue, forKey: "inputGreenCoefficients")
        }
    }

    /// Polynomial coefficients for blue channel
    public var inputBlueCoefficients: CIVector? {
        get {
            return valueForKey("inputBlueCoefficients") as? CIVector
        }
        set {
            setValue(newValue, forKey: "inputBlueCoefficients")
        }
    }

    /// Polynomial coefficients for alpha channel
    public var inputAlphaCoefficients: CIVector? {
        get {
            return valueForKey("inputAlphaCoefficients") as? CIVector
        }
        set {
            setValue(newValue, forKey: "inputAlphaCoefficients")
        }
    }
}

/**
Remaps red, green, and blue color components to the number of brightness values you specify for each color component. This filter flattens colors to achieve a look similar to that of a silk-screened poster.

[More Information](http: //developer.apple.com/cgi-bin/apple_ref.cgi?apple_ref=//apple_ref/doc/filter/ci/CIColorPosterize)
*/
public class ColorPosterize: Filter {

    let name = "CIColorPosterize"

    public init(inputImage: CIImage? = nil, inputLevels: CGFloat? = nil) {
        super.init(name: "CIColorPosterize")

        if let inputImage = inputImage {
            self.inputImage = inputImage
        }
        if let inputLevels = inputLevels {
            self.inputLevels = inputLevels
        }
    }


    /// The image to use as an input image. For filters that also use a background image, this is the foreground image.
    public var inputImage: CIImage? {
        get {
            return valueForKey("inputImage") as? CIImage
        }
        set {
            setValue(newValue, forKey: "inputImage")
        }
    }

    /// The number of brightness levels to use for each color component. Lower values result in a more extreme poster effect.
    public var inputLevels: CGFloat? {
        get {
            return valueForKey("inputLevels") as? CGFloat
        }
        set {
            setValue(newValue, forKey: "inputLevels")
        }
    }
}

/**
Calculates the average color for each column of the specified area in an image, returning the result in a 1D image.

[More Information](http: //developer.apple.com/cgi-bin/apple_ref.cgi?apple_ref=//apple_ref/doc/filter/ci/CIColumnAverage)
*/
public class ColumnAverage: Filter {

    let name = "CIColumnAverage"

    public init(inputImage: CIImage? = nil, inputExtent: CIVector? = nil) {
        super.init(name: "CIColumnAverage")

        if let inputImage = inputImage {
            self.inputImage = inputImage
        }
        if let inputExtent = inputExtent {
            self.inputExtent = inputExtent
        }
    }


    /// The image to process.
    public var inputImage: CIImage? {
        get {
            return valueForKey("inputImage") as? CIImage
        }
        set {
            setValue(newValue, forKey: "inputImage")
        }
    }

    /// A rectangle that specifies the subregion of the image that you want to process.
    public var inputExtent: CIVector? {
        get {
            return valueForKey("inputExtent") as? CIVector
        }
        set {
            setValue(newValue, forKey: "inputExtent")
        }
    }
}

/**
Simulates a comic book drawing by outlining edges and applying a color halftone effect.

[More Information](http: //developer.apple.com/cgi-bin/apple_ref.cgi?apple_ref=//apple_ref/doc/filter/ci/CIComicEffect)
*/
public class ComicEffect: Filter {

    let name = "CIComicEffect"

    public init(inputImage: CIImage? = nil) {
        super.init(name: "CIComicEffect")

        if let inputImage = inputImage {
            self.inputImage = inputImage
        }
    }


    /// The image to use as an input image. For filters that also use a background image, this is the foreground image.
    public var inputImage: CIImage? {
        get {
            return valueForKey("inputImage") as? CIImage
        }
        set {
            setValue(newValue, forKey: "inputImage")
        }
    }
}

/**
Generates a solid color. You typically use the output of this filter as the input to another filter.

[More Information](http: //developer.apple.com/cgi-bin/apple_ref.cgi?apple_ref=//apple_ref/doc/filter/ci/CIConstantColorGenerator)
*/
public class ConstantColorGenerator: Filter {

    let name = "CIConstantColorGenerator"

    public init(inputColor: CIColor? = nil) {
        super.init(name: "CIConstantColorGenerator")

        if let inputColor = inputColor {
            self.inputColor = inputColor
        }
    }


    /// The color to generate.
    public var inputColor: CIColor? {
        get {
            return valueForKey("inputColor") as? CIColor
        }
        set {
            setValue(newValue, forKey: "inputColor")
        }
    }
}

/**
Convolution with 3 by 3 matrix

[More Information](http: //developer.apple.com/cgi-bin/apple_ref.cgi?apple_ref=//apple_ref/doc/filter/ci/CIConvolution3X3)
*/
public class Convolution3X3: Filter {

    let name = "CIConvolution3X3"

    public init(inputImage: CIImage? = nil, inputWeights: CIVector? = nil, inputBias: CGFloat? = nil) {
        super.init(name: "CIConvolution3X3")

        if let inputImage = inputImage {
            self.inputImage = inputImage
        }
        if let inputWeights = inputWeights {
            self.inputWeights = inputWeights
        }
        if let inputBias = inputBias {
            self.inputBias = inputBias
        }
    }


    /// The image to use as an input image. For filters that also use a background image, this is the foreground image.
    public var inputImage: CIImage? {
        get {
            return valueForKey("inputImage") as? CIImage
        }
        set {
            setValue(newValue, forKey: "inputImage")
        }
    }

    public var inputWeights: CIVector? {
        get {
            return valueForKey("inputWeights") as? CIVector
        }
        set {
            setValue(newValue, forKey: "inputWeights")
        }
    }

    public var inputBias: CGFloat? {
        get {
            return valueForKey("inputBias") as? CGFloat
        }
        set {
            setValue(newValue, forKey: "inputBias")
        }
    }
}

/**
Convolution with 5 by 5 matrix

[More Information](http: //developer.apple.com/cgi-bin/apple_ref.cgi?apple_ref=//apple_ref/doc/filter/ci/CIConvolution5X5)
*/
public class Convolution5X5: Filter {

    let name = "CIConvolution5X5"

    public init(inputImage: CIImage? = nil, inputWeights: CIVector? = nil, inputBias: CGFloat? = nil) {
        super.init(name: "CIConvolution5X5")

        if let inputImage = inputImage {
            self.inputImage = inputImage
        }
        if let inputWeights = inputWeights {
            self.inputWeights = inputWeights
        }
        if let inputBias = inputBias {
            self.inputBias = inputBias
        }
    }


    /// The image to use as an input image. For filters that also use a background image, this is the foreground image.
    public var inputImage: CIImage? {
        get {
            return valueForKey("inputImage") as? CIImage
        }
        set {
            setValue(newValue, forKey: "inputImage")
        }
    }

    public var inputWeights: CIVector? {
        get {
            return valueForKey("inputWeights") as? CIVector
        }
        set {
            setValue(newValue, forKey: "inputWeights")
        }
    }

    public var inputBias: CGFloat? {
        get {
            return valueForKey("inputBias") as? CGFloat
        }
        set {
            setValue(newValue, forKey: "inputBias")
        }
    }
}

/**
Convolution with 7 by 7 matrix

[More Information](http: //developer.apple.com/cgi-bin/apple_ref.cgi?apple_ref=//apple_ref/doc/filter/ci/CIConvolution7X7)
*/
public class Convolution7X7: Filter {

    let name = "CIConvolution7X7"

    public init(inputImage: CIImage? = nil, inputWeights: CIVector? = nil, inputBias: CGFloat? = nil) {
        super.init(name: "CIConvolution7X7")

        if let inputImage = inputImage {
            self.inputImage = inputImage
        }
        if let inputWeights = inputWeights {
            self.inputWeights = inputWeights
        }
        if let inputBias = inputBias {
            self.inputBias = inputBias
        }
    }


    /// The image to use as an input image. For filters that also use a background image, this is the foreground image.
    public var inputImage: CIImage? {
        get {
            return valueForKey("inputImage") as? CIImage
        }
        set {
            setValue(newValue, forKey: "inputImage")
        }
    }

    public var inputWeights: CIVector? {
        get {
            return valueForKey("inputWeights") as? CIVector
        }
        set {
            setValue(newValue, forKey: "inputWeights")
        }
    }

    public var inputBias: CGFloat? {
        get {
            return valueForKey("inputBias") as? CGFloat
        }
        set {
            setValue(newValue, forKey: "inputBias")
        }
    }
}

/**
Horizontal Convolution with 9 values

[More Information](http: //developer.apple.com/cgi-bin/apple_ref.cgi?apple_ref=//apple_ref/doc/filter/ci/CIConvolution9Horizontal)
*/
public class Convolution9Horizontal: Filter {

    let name = "CIConvolution9Horizontal"

    public init(inputImage: CIImage? = nil, inputWeights: CIVector? = nil, inputBias: CGFloat? = nil) {
        super.init(name: "CIConvolution9Horizontal")

        if let inputImage = inputImage {
            self.inputImage = inputImage
        }
        if let inputWeights = inputWeights {
            self.inputWeights = inputWeights
        }
        if let inputBias = inputBias {
            self.inputBias = inputBias
        }
    }


    /// The image to use as an input image. For filters that also use a background image, this is the foreground image.
    public var inputImage: CIImage? {
        get {
            return valueForKey("inputImage") as? CIImage
        }
        set {
            setValue(newValue, forKey: "inputImage")
        }
    }

    public var inputWeights: CIVector? {
        get {
            return valueForKey("inputWeights") as? CIVector
        }
        set {
            setValue(newValue, forKey: "inputWeights")
        }
    }

    public var inputBias: CGFloat? {
        get {
            return valueForKey("inputBias") as? CGFloat
        }
        set {
            setValue(newValue, forKey: "inputBias")
        }
    }
}

/**
Vertical Convolution with 9 values

[More Information](http: //developer.apple.com/cgi-bin/apple_ref.cgi?apple_ref=//apple_ref/doc/filter/ci/CIConvolution9Vertical)
*/
public class Convolution9Vertical: Filter {

    let name = "CIConvolution9Vertical"

    public init(inputImage: CIImage? = nil, inputWeights: CIVector? = nil, inputBias: CGFloat? = nil) {
        super.init(name: "CIConvolution9Vertical")

        if let inputImage = inputImage {
            self.inputImage = inputImage
        }
        if let inputWeights = inputWeights {
            self.inputWeights = inputWeights
        }
        if let inputBias = inputBias {
            self.inputBias = inputBias
        }
    }


    /// The image to use as an input image. For filters that also use a background image, this is the foreground image.
    public var inputImage: CIImage? {
        get {
            return valueForKey("inputImage") as? CIImage
        }
        set {
            setValue(newValue, forKey: "inputImage")
        }
    }

    public var inputWeights: CIVector? {
        get {
            return valueForKey("inputWeights") as? CIVector
        }
        set {
            setValue(newValue, forKey: "inputWeights")
        }
    }

    public var inputBias: CGFloat? {
        get {
            return valueForKey("inputBias") as? CGFloat
        }
        set {
            setValue(newValue, forKey: "inputBias")
        }
    }
}

/**
Transitions from one image to another by simulating the effect of a copy machine.

[More Information](http: //developer.apple.com/cgi-bin/apple_ref.cgi?apple_ref=//apple_ref/doc/filter/ci/CICopyMachineTransition)
*/
public class CopyMachineTransition: Filter {

    let name = "CICopyMachineTransition"

    public init(inputImage: CIImage? = nil, inputTargetImage: CIImage? = nil, inputExtent: CIVector? = nil, inputColor: CIColor? = nil, inputTime: CGFloat? = nil, inputAngle: CGFloat? = nil, inputWidth: CGFloat? = nil, inputOpacity: CGFloat? = nil) {
        super.init(name: "CICopyMachineTransition")

        if let inputImage = inputImage {
            self.inputImage = inputImage
        }
        if let inputTargetImage = inputTargetImage {
            self.inputTargetImage = inputTargetImage
        }
        if let inputExtent = inputExtent {
            self.inputExtent = inputExtent
        }
        if let inputColor = inputColor {
            self.inputColor = inputColor
        }
        if let inputTime = inputTime {
            self.inputTime = inputTime
        }
        if let inputAngle = inputAngle {
            self.inputAngle = inputAngle
        }
        if let inputWidth = inputWidth {
            self.inputWidth = inputWidth
        }
        if let inputOpacity = inputOpacity {
            self.inputOpacity = inputOpacity
        }
    }


    /// The image to use as an input image. For filters that also use a background image, this is the foreground image.
    public var inputImage: CIImage? {
        get {
            return valueForKey("inputImage") as? CIImage
        }
        set {
            setValue(newValue, forKey: "inputImage")
        }
    }

    /// The target image for a transition.
    public var inputTargetImage: CIImage? {
        get {
            return valueForKey("inputTargetImage") as? CIImage
        }
        set {
            setValue(newValue, forKey: "inputTargetImage")
        }
    }

    /// A rectangle that defines the extent of the effect.
    public var inputExtent: CIVector? {
        get {
            return valueForKey("inputExtent") as? CIVector
        }
        set {
            setValue(newValue, forKey: "inputExtent")
        }
    }

    /// The color of the copier light.
    public var inputColor: CIColor? {
        get {
            return valueForKey("inputColor") as? CIColor
        }
        set {
            setValue(newValue, forKey: "inputColor")
        }
    }

    /// The parametric time of the transition. This value drives the transition from start (at time 0) to end (at time 1).
    public var inputTime: CGFloat? {
        get {
            return valueForKey("inputTime") as? CGFloat
        }
        set {
            setValue(newValue, forKey: "inputTime")
        }
    }

    /// The angle of the copier light.
    public var inputAngle: CGFloat? {
        get {
            return valueForKey("inputAngle") as? CGFloat
        }
        set {
            setValue(newValue, forKey: "inputAngle")
        }
    }

    /// The width of the copier light.
    public var inputWidth: CGFloat? {
        get {
            return valueForKey("inputWidth") as? CGFloat
        }
        set {
            setValue(newValue, forKey: "inputWidth")
        }
    }

    /// The opacity of the copier light. A value of 0.0 is transparent. A value of 1.0 is opaque.
    public var inputOpacity: CGFloat? {
        get {
            return valueForKey("inputOpacity") as? CGFloat
        }
        set {
            setValue(newValue, forKey: "inputOpacity")
        }
    }
}

/**
Applies a crop to an image. The size and shape of the cropped image depend on the rectangle you specify.

[More Information](http: //developer.apple.com/cgi-bin/apple_ref.cgi?apple_ref=//apple_ref/doc/filter/ci/CICrop)
*/
public class Crop: Filter {

    let name = "CICrop"

    public init(inputImage: CIImage? = nil, inputRectangle: CIVector? = nil) {
        super.init(name: "CICrop")

        if let inputImage = inputImage {
            self.inputImage = inputImage
        }
        if let inputRectangle = inputRectangle {
            self.inputRectangle = inputRectangle
        }
    }


    /// The image to use as an input image. For filters that also use a background image, this is the foreground image.
    public var inputImage: CIImage? {
        get {
            return valueForKey("inputImage") as? CIImage
        }
        set {
            setValue(newValue, forKey: "inputImage")
        }
    }

    /// The rectangle that specifies the crop to apply to the image.
    public var inputRectangle: CIVector? {
        get {
            return valueForKey("inputRectangle") as? CIVector
        }
        set {
            setValue(newValue, forKey: "inputRectangle")
        }
    }
}

/**
Creates polygon-shaped color blocks by aggregating source pixel-color values.

[More Information](http: //developer.apple.com/cgi-bin/apple_ref.cgi?apple_ref=//apple_ref/doc/filter/ci/CICrystallize)
*/
public class Crystallize: Filter {

    let name = "CICrystallize"

    public init(inputImage: CIImage? = nil, inputRadius: CGFloat? = nil, inputCenter: CIVector? = nil) {
        super.init(name: "CICrystallize")

        if let inputImage = inputImage {
            self.inputImage = inputImage
        }
        if let inputRadius = inputRadius {
            self.inputRadius = inputRadius
        }
        if let inputCenter = inputCenter {
            self.inputCenter = inputCenter
        }
    }


    /// The image to use as an input image. For filters that also use a background image, this is the foreground image.
    public var inputImage: CIImage? {
        get {
            return valueForKey("inputImage") as? CIImage
        }
        set {
            setValue(newValue, forKey: "inputImage")
        }
    }

    /// The radius determines how many pixels are used to create the effect. The larger the radius, the larger the resulting crystals.
    public var inputRadius: CGFloat? {
        get {
            return valueForKey("inputRadius") as? CGFloat
        }
        set {
            setValue(newValue, forKey: "inputRadius")
        }
    }

    /// The center of the effect as x and y coordinates.
    public var inputCenter: CIVector? {
        get {
            return valueForKey("inputCenter") as? CIVector
        }
        set {
            setValue(newValue, forKey: "inputCenter")
        }
    }
}

/**
Creates composite image samples by choosing the darker samples (from either the source image or the background). The result is that the background image samples are replaced by any source image samples that are darker. Otherwise, the background image samples are left unchanged.

[More Information](http: //developer.apple.com/cgi-bin/apple_ref.cgi?apple_ref=//apple_ref/doc/filter/ci/CIDarkenBlendMode)
*/
public class DarkenBlendMode: Filter {

    let name = "CIDarkenBlendMode"

    public init(inputImage: CIImage? = nil, inputBackgroundImage: CIImage? = nil) {
        super.init(name: "CIDarkenBlendMode")

        if let inputImage = inputImage {
            self.inputImage = inputImage
        }
        if let inputBackgroundImage = inputBackgroundImage {
            self.inputBackgroundImage = inputBackgroundImage
        }
    }


    /// The image to use as an input image. For filters that also use a background image, this is the foreground image.
    public var inputImage: CIImage? {
        get {
            return valueForKey("inputImage") as? CIImage
        }
        set {
            setValue(newValue, forKey: "inputImage")
        }
    }

    /// The image to use as a background image.
    public var inputBackgroundImage: CIImage? {
        get {
            return valueForKey("inputBackgroundImage") as? CIImage
        }
        set {
            setValue(newValue, forKey: "inputBackgroundImage")
        }
    }
}

/**
Simulates miniaturization effect created by Tilt & Shift lens by performing depth of field effects.

[More Information](http: //developer.apple.com/cgi-bin/apple_ref.cgi?apple_ref=//apple_ref/doc/filter/ci/CIDepthOfField)
*/
public class DepthOfField: Filter {

    let name = "CIDepthOfField"

    public init(inputImage: CIImage? = nil, inputPoint0: CIVector? = nil, inputPoint1: CIVector? = nil, inputSaturation: CGFloat? = nil, inputUnsharpMaskRadius: CGFloat? = nil, inputUnsharpMaskIntensity: CGFloat? = nil, inputRadius: CGFloat? = nil) {
        super.init(name: "CIDepthOfField")

        if let inputImage = inputImage {
            self.inputImage = inputImage
        }
        if let inputPoint0 = inputPoint0 {
            self.inputPoint0 = inputPoint0
        }
        if let inputPoint1 = inputPoint1 {
            self.inputPoint1 = inputPoint1
        }
        if let inputSaturation = inputSaturation {
            self.inputSaturation = inputSaturation
        }
        if let inputUnsharpMaskRadius = inputUnsharpMaskRadius {
            self.inputUnsharpMaskRadius = inputUnsharpMaskRadius
        }
        if let inputUnsharpMaskIntensity = inputUnsharpMaskIntensity {
            self.inputUnsharpMaskIntensity = inputUnsharpMaskIntensity
        }
        if let inputRadius = inputRadius {
            self.inputRadius = inputRadius
        }
    }


    /// The image to use as an input image. For filters that also use a background image, this is the foreground image.
    public var inputImage: CIImage? {
        get {
            return valueForKey("inputImage") as? CIImage
        }
        set {
            setValue(newValue, forKey: "inputImage")
        }
    }

    public var inputPoint0: CIVector? {
        get {
            return valueForKey("inputPoint0") as? CIVector
        }
        set {
            setValue(newValue, forKey: "inputPoint0")
        }
    }

    public var inputPoint1: CIVector? {
        get {
            return valueForKey("inputPoint1") as? CIVector
        }
        set {
            setValue(newValue, forKey: "inputPoint1")
        }
    }

    /// The amount to adjust the saturation.
    public var inputSaturation: CGFloat? {
        get {
            return valueForKey("inputSaturation") as? CGFloat
        }
        set {
            setValue(newValue, forKey: "inputSaturation")
        }
    }

    public var inputUnsharpMaskRadius: CGFloat? {
        get {
            return valueForKey("inputUnsharpMaskRadius") as? CGFloat
        }
        set {
            setValue(newValue, forKey: "inputUnsharpMaskRadius")
        }
    }

    public var inputUnsharpMaskIntensity: CGFloat? {
        get {
            return valueForKey("inputUnsharpMaskIntensity") as? CGFloat
        }
        set {
            setValue(newValue, forKey: "inputUnsharpMaskIntensity")
        }
    }

    /// The distance from the center of the effect.
    public var inputRadius: CGFloat? {
        get {
            return valueForKey("inputRadius") as? CGFloat
        }
        set {
            setValue(newValue, forKey: "inputRadius")
        }
    }
}

/**
Subtracts either the source image sample color from the background image sample color, or the reverse, depending on which sample has the greater brightness value. Source image sample values that are black produce no change; white inverts the background color values.

[More Information](http: //developer.apple.com/cgi-bin/apple_ref.cgi?apple_ref=//apple_ref/doc/filter/ci/CIDifferenceBlendMode)
*/
public class DifferenceBlendMode: Filter {

    let name = "CIDifferenceBlendMode"

    public init(inputImage: CIImage? = nil, inputBackgroundImage: CIImage? = nil) {
        super.init(name: "CIDifferenceBlendMode")

        if let inputImage = inputImage {
            self.inputImage = inputImage
        }
        if let inputBackgroundImage = inputBackgroundImage {
            self.inputBackgroundImage = inputBackgroundImage
        }
    }


    /// The image to use as an input image. For filters that also use a background image, this is the foreground image.
    public var inputImage: CIImage? {
        get {
            return valueForKey("inputImage") as? CIImage
        }
        set {
            setValue(newValue, forKey: "inputImage")
        }
    }

    /// The image to use as a background image.
    public var inputBackgroundImage: CIImage? {
        get {
            return valueForKey("inputBackgroundImage") as? CIImage
        }
        set {
            setValue(newValue, forKey: "inputBackgroundImage")
        }
    }
}

/**
Smooths or sharpens an image using a disc-shaped convolution kernel.

[More Information](http: //developer.apple.com/cgi-bin/apple_ref.cgi?apple_ref=//apple_ref/doc/filter/ci/CIDiscBlur)
*/
public class DiscBlur: Filter {

    let name = "CIDiscBlur"

    public init(inputImage: CIImage? = nil, inputRadius: CGFloat? = nil) {
        super.init(name: "CIDiscBlur")

        if let inputImage = inputImage {
            self.inputImage = inputImage
        }
        if let inputRadius = inputRadius {
            self.inputRadius = inputRadius
        }
    }


    /// The image to use as an input image. For filters that also use a background image, this is the foreground image.
    public var inputImage: CIImage? {
        get {
            return valueForKey("inputImage") as? CIImage
        }
        set {
            setValue(newValue, forKey: "inputImage")
        }
    }

    /// The radius determines how many pixels are used to create the blur. The larger the radius, the blurrier the result.
    public var inputRadius: CGFloat? {
        get {
            return valueForKey("inputRadius") as? CGFloat
        }
        set {
            setValue(newValue, forKey: "inputRadius")
        }
    }
}

/**
Transitions from one image to another using the shape defined by a mask.

[More Information](http: //developer.apple.com/cgi-bin/apple_ref.cgi?apple_ref=//apple_ref/doc/filter/ci/CIDisintegrateWithMaskTransition)
*/
public class DisintegrateWithMaskTransition: Filter {

    let name = "CIDisintegrateWithMaskTransition"

    public init(inputImage: CIImage? = nil, inputTargetImage: CIImage? = nil, inputMaskImage: CIImage? = nil, inputTime: CGFloat? = nil, inputShadowRadius: CGFloat? = nil, inputShadowDensity: CGFloat? = nil, inputShadowOffset: CIVector? = nil) {
        super.init(name: "CIDisintegrateWithMaskTransition")

        if let inputImage = inputImage {
            self.inputImage = inputImage
        }
        if let inputTargetImage = inputTargetImage {
            self.inputTargetImage = inputTargetImage
        }
        if let inputMaskImage = inputMaskImage {
            self.inputMaskImage = inputMaskImage
        }
        if let inputTime = inputTime {
            self.inputTime = inputTime
        }
        if let inputShadowRadius = inputShadowRadius {
            self.inputShadowRadius = inputShadowRadius
        }
        if let inputShadowDensity = inputShadowDensity {
            self.inputShadowDensity = inputShadowDensity
        }
        if let inputShadowOffset = inputShadowOffset {
            self.inputShadowOffset = inputShadowOffset
        }
    }


    /// The image to use as an input image. For filters that also use a background image, this is the foreground image.
    public var inputImage: CIImage? {
        get {
            return valueForKey("inputImage") as? CIImage
        }
        set {
            setValue(newValue, forKey: "inputImage")
        }
    }

    /// The target image for a transition.
    public var inputTargetImage: CIImage? {
        get {
            return valueForKey("inputTargetImage") as? CIImage
        }
        set {
            setValue(newValue, forKey: "inputTargetImage")
        }
    }

    /// An image that defines the shape to use when disintegrating from the source to the target image.
    public var inputMaskImage: CIImage? {
        get {
            return valueForKey("inputMaskImage") as? CIImage
        }
        set {
            setValue(newValue, forKey: "inputMaskImage")
        }
    }

    /// The parametric time of the transition. This value drives the transition from start (at time 0) to end (at time 1).
    public var inputTime: CGFloat? {
        get {
            return valueForKey("inputTime") as? CGFloat
        }
        set {
            setValue(newValue, forKey: "inputTime")
        }
    }

    /// The radius of the shadow created by the mask.
    public var inputShadowRadius: CGFloat? {
        get {
            return valueForKey("inputShadowRadius") as? CGFloat
        }
        set {
            setValue(newValue, forKey: "inputShadowRadius")
        }
    }

    /// The density of the shadow created by the mask.
    public var inputShadowDensity: CGFloat? {
        get {
            return valueForKey("inputShadowDensity") as? CGFloat
        }
        set {
            setValue(newValue, forKey: "inputShadowDensity")
        }
    }

    /// The offset of the shadow created by the mask.
    public var inputShadowOffset: CIVector? {
        get {
            return valueForKey("inputShadowOffset") as? CIVector
        }
        set {
            setValue(newValue, forKey: "inputShadowOffset")
        }
    }
}

/**
Applies the grayscale values of the second image to the first image. The output image has a texture defined by the grayscale values.

[More Information](http: //developer.apple.com/cgi-bin/apple_ref.cgi?apple_ref=//apple_ref/doc/filter/ci/CIDisplacementDistortion)
*/
public class DisplacementDistortion: Filter {

    let name = "CIDisplacementDistortion"

    public init(inputImage: CIImage? = nil, inputDisplacementImage: CIImage? = nil, inputScale: CGFloat? = nil) {
        super.init(name: "CIDisplacementDistortion")

        if let inputImage = inputImage {
            self.inputImage = inputImage
        }
        if let inputDisplacementImage = inputDisplacementImage {
            self.inputDisplacementImage = inputDisplacementImage
        }
        if let inputScale = inputScale {
            self.inputScale = inputScale
        }
    }


    /// The image to use as an input image. For filters that also use a background image, this is the foreground image.
    public var inputImage: CIImage? {
        get {
            return valueForKey("inputImage") as? CIImage
        }
        set {
            setValue(newValue, forKey: "inputImage")
        }
    }

    /// An image whose grayscale values will be applied to the source image.
    public var inputDisplacementImage: CIImage? {
        get {
            return valueForKey("inputDisplacementImage") as? CIImage
        }
        set {
            setValue(newValue, forKey: "inputDisplacementImage")
        }
    }

    /// The amount of texturing of the resulting image. The larger the value, the greater the texturing.
    public var inputScale: CGFloat? {
        get {
            return valueForKey("inputScale") as? CGFloat
        }
        set {
            setValue(newValue, forKey: "inputScale")
        }
    }
}

/**
Uses a dissolve to transition from one image to another.

[More Information](http: //developer.apple.com/cgi-bin/apple_ref.cgi?apple_ref=//apple_ref/doc/filter/ci/CIDissolveTransition)
*/
public class DissolveTransition: Filter {

    let name = "CIDissolveTransition"

    public init(inputImage: CIImage? = nil, inputTargetImage: CIImage? = nil, inputTime: CGFloat? = nil) {
        super.init(name: "CIDissolveTransition")

        if let inputImage = inputImage {
            self.inputImage = inputImage
        }
        if let inputTargetImage = inputTargetImage {
            self.inputTargetImage = inputTargetImage
        }
        if let inputTime = inputTime {
            self.inputTime = inputTime
        }
    }


    /// The image to use as an input image. For filters that also use a background image, this is the foreground image.
    public var inputImage: CIImage? {
        get {
            return valueForKey("inputImage") as? CIImage
        }
        set {
            setValue(newValue, forKey: "inputImage")
        }
    }

    /// The target image for a transition.
    public var inputTargetImage: CIImage? {
        get {
            return valueForKey("inputTargetImage") as? CIImage
        }
        set {
            setValue(newValue, forKey: "inputTargetImage")
        }
    }

    /// The parametric time of the transition. This value drives the transition from start (at time 0) to end (at time 1).
    public var inputTime: CGFloat? {
        get {
            return valueForKey("inputTime") as? CGFloat
        }
        set {
            setValue(newValue, forKey: "inputTime")
        }
    }
}

/**
Divides the background image sample color from the source image sample color.

[More Information](http: //developer.apple.com/cgi-bin/apple_ref.cgi?apple_ref=//apple_ref/doc/filter/ci/CIDivideBlendMode)
*/
public class DivideBlendMode: Filter {

    let name = "CIDivideBlendMode"

    public init(inputImage: CIImage? = nil, inputBackgroundImage: CIImage? = nil) {
        super.init(name: "CIDivideBlendMode")

        if let inputImage = inputImage {
            self.inputImage = inputImage
        }
        if let inputBackgroundImage = inputBackgroundImage {
            self.inputBackgroundImage = inputBackgroundImage
        }
    }


    /// The image to use as an input image. For filters that also use a background image, this is the foreground image.
    public var inputImage: CIImage? {
        get {
            return valueForKey("inputImage") as? CIImage
        }
        set {
            setValue(newValue, forKey: "inputImage")
        }
    }

    /// The image to use as a background image.
    public var inputBackgroundImage: CIImage? {
        get {
            return valueForKey("inputBackgroundImage") as? CIImage
        }
        set {
            setValue(newValue, forKey: "inputBackgroundImage")
        }
    }
}

/**
Simulates the dot patterns of a halftone screen.

[More Information](http: //developer.apple.com/cgi-bin/apple_ref.cgi?apple_ref=//apple_ref/doc/filter/ci/CIDotScreen)
*/
public class DotScreen: Filter {

    let name = "CIDotScreen"

    public init(inputImage: CIImage? = nil, inputCenter: CIVector? = nil, inputAngle: CGFloat? = nil, inputWidth: CGFloat? = nil, inputSharpness: CGFloat? = nil) {
        super.init(name: "CIDotScreen")

        if let inputImage = inputImage {
            self.inputImage = inputImage
        }
        if let inputCenter = inputCenter {
            self.inputCenter = inputCenter
        }
        if let inputAngle = inputAngle {
            self.inputAngle = inputAngle
        }
        if let inputWidth = inputWidth {
            self.inputWidth = inputWidth
        }
        if let inputSharpness = inputSharpness {
            self.inputSharpness = inputSharpness
        }
    }


    /// The image to use as an input image. For filters that also use a background image, this is the foreground image.
    public var inputImage: CIImage? {
        get {
            return valueForKey("inputImage") as? CIImage
        }
        set {
            setValue(newValue, forKey: "inputImage")
        }
    }

    /// The x and y position to use as the center of the dot screen pattern
    public var inputCenter: CIVector? {
        get {
            return valueForKey("inputCenter") as? CIVector
        }
        set {
            setValue(newValue, forKey: "inputCenter")
        }
    }

    /// The angle of the pattern.
    public var inputAngle: CGFloat? {
        get {
            return valueForKey("inputAngle") as? CGFloat
        }
        set {
            setValue(newValue, forKey: "inputAngle")
        }
    }

    /// The distance between dots in the pattern.
    public var inputWidth: CGFloat? {
        get {
            return valueForKey("inputWidth") as? CGFloat
        }
        set {
            setValue(newValue, forKey: "inputWidth")
        }
    }

    /// The sharpness of the pattern. The larger the value, the sharper the pattern.
    public var inputSharpness: CGFloat? {
        get {
            return valueForKey("inputSharpness") as? CGFloat
        }
        set {
            setValue(newValue, forKey: "inputSharpness")
        }
    }
}

/**
Performs M.C. Escher Droste style deformation

[More Information](http: //developer.apple.com/cgi-bin/apple_ref.cgi?apple_ref=//apple_ref/doc/filter/ci/CIDroste)
*/
public class Droste: Filter {

    let name = "CIDroste"

    public init(inputImage: CIImage? = nil, inputInsetPoint0: CIVector? = nil, inputInsetPoint1: CIVector? = nil, inputStrands: CGFloat? = nil, inputPeriodicity: CGFloat? = nil, inputRotation: CGFloat? = nil, inputZoom: CGFloat? = nil) {
        super.init(name: "CIDroste")

        if let inputImage = inputImage {
            self.inputImage = inputImage
        }
        if let inputInsetPoint0 = inputInsetPoint0 {
            self.inputInsetPoint0 = inputInsetPoint0
        }
        if let inputInsetPoint1 = inputInsetPoint1 {
            self.inputInsetPoint1 = inputInsetPoint1
        }
        if let inputStrands = inputStrands {
            self.inputStrands = inputStrands
        }
        if let inputPeriodicity = inputPeriodicity {
            self.inputPeriodicity = inputPeriodicity
        }
        if let inputRotation = inputRotation {
            self.inputRotation = inputRotation
        }
        if let inputZoom = inputZoom {
            self.inputZoom = inputZoom
        }
    }


    /// The image to use as an input image. For filters that also use a background image, this is the foreground image.
    public var inputImage: CIImage? {
        get {
            return valueForKey("inputImage") as? CIImage
        }
        set {
            setValue(newValue, forKey: "inputImage")
        }
    }

    public var inputInsetPoint0: CIVector? {
        get {
            return valueForKey("inputInsetPoint0") as? CIVector
        }
        set {
            setValue(newValue, forKey: "inputInsetPoint0")
        }
    }

    public var inputInsetPoint1: CIVector? {
        get {
            return valueForKey("inputInsetPoint1") as? CIVector
        }
        set {
            setValue(newValue, forKey: "inputInsetPoint1")
        }
    }

    public var inputStrands: CGFloat? {
        get {
            return valueForKey("inputStrands") as? CGFloat
        }
        set {
            setValue(newValue, forKey: "inputStrands")
        }
    }

    public var inputPeriodicity: CGFloat? {
        get {
            return valueForKey("inputPeriodicity") as? CGFloat
        }
        set {
            setValue(newValue, forKey: "inputPeriodicity")
        }
    }

    public var inputRotation: CGFloat? {
        get {
            return valueForKey("inputRotation") as? CGFloat
        }
        set {
            setValue(newValue, forKey: "inputRotation")
        }
    }

    public var inputZoom: CGFloat? {
        get {
            return valueForKey("inputZoom") as? CGFloat
        }
        set {
            setValue(newValue, forKey: "inputZoom")
        }
    }
}

/**
Finds all edges in an image and displays them in color.

[More Information](http: //developer.apple.com/cgi-bin/apple_ref.cgi?apple_ref=//apple_ref/doc/filter/ci/CIEdges)
*/
public class Edges: Filter {

    let name = "CIEdges"

    public init(inputImage: CIImage? = nil, inputIntensity: CGFloat? = nil) {
        super.init(name: "CIEdges")

        if let inputImage = inputImage {
            self.inputImage = inputImage
        }
        if let inputIntensity = inputIntensity {
            self.inputIntensity = inputIntensity
        }
    }


    /// The image to use as an input image. For filters that also use a background image, this is the foreground image.
    public var inputImage: CIImage? {
        get {
            return valueForKey("inputImage") as? CIImage
        }
        set {
            setValue(newValue, forKey: "inputImage")
        }
    }

    /// The intensity of the edges. The larger the value, the higher the intensity.
    public var inputIntensity: CGFloat? {
        get {
            return valueForKey("inputIntensity") as? CGFloat
        }
        set {
            setValue(newValue, forKey: "inputIntensity")
        }
    }
}

/**
Produces a stylized black-and-white rendition of an image that looks similar to a woodblock cutout.

[More Information](http: //developer.apple.com/cgi-bin/apple_ref.cgi?apple_ref=//apple_ref/doc/filter/ci/CIEdgeWork)
*/
public class EdgeWork: Filter {

    let name = "CIEdgeWork"

    public init(inputImage: CIImage? = nil, inputRadius: CGFloat? = nil) {
        super.init(name: "CIEdgeWork")

        if let inputImage = inputImage {
            self.inputImage = inputImage
        }
        if let inputRadius = inputRadius {
            self.inputRadius = inputRadius
        }
    }


    /// The image to use as an input image. For filters that also use a background image, this is the foreground image.
    public var inputImage: CIImage? {
        get {
            return valueForKey("inputImage") as? CIImage
        }
        set {
            setValue(newValue, forKey: "inputImage")
        }
    }

    /// The thickness of the edges. The larger the value, the thicker the edges.
    public var inputRadius: CGFloat? {
        get {
            return valueForKey("inputRadius") as? CGFloat
        }
        set {
            setValue(newValue, forKey: "inputRadius")
        }
    }
}

/**
Produces a tiled image from a source image by applying an 8-way reflected symmetry.

[More Information](http: //developer.apple.com/cgi-bin/apple_ref.cgi?apple_ref=//apple_ref/doc/filter/ci/CIEightfoldReflectedTile)
*/
public class EightfoldReflectedTile: Filter {

    let name = "CIEightfoldReflectedTile"

    public init(inputImage: CIImage? = nil, inputCenter: CIVector? = nil, inputAngle: CGFloat? = nil, inputWidth: CGFloat? = nil) {
        super.init(name: "CIEightfoldReflectedTile")

        if let inputImage = inputImage {
            self.inputImage = inputImage
        }
        if let inputCenter = inputCenter {
            self.inputCenter = inputCenter
        }
        if let inputAngle = inputAngle {
            self.inputAngle = inputAngle
        }
        if let inputWidth = inputWidth {
            self.inputWidth = inputWidth
        }
    }


    /// The image to use as an input image. For filters that also use a background image, this is the foreground image.
    public var inputImage: CIImage? {
        get {
            return valueForKey("inputImage") as? CIImage
        }
        set {
            setValue(newValue, forKey: "inputImage")
        }
    }

    /// The x and y position to use as the center of the effect
    public var inputCenter: CIVector? {
        get {
            return valueForKey("inputCenter") as? CIVector
        }
        set {
            setValue(newValue, forKey: "inputCenter")
        }
    }

    /// The angle (in radians) of the tiled pattern.
    public var inputAngle: CGFloat? {
        get {
            return valueForKey("inputAngle") as? CGFloat
        }
        set {
            setValue(newValue, forKey: "inputAngle")
        }
    }

    /// The width of a tile.
    public var inputWidth: CGFloat? {
        get {
            return valueForKey("inputWidth") as? CGFloat
        }
        set {
            setValue(newValue, forKey: "inputWidth")
        }
    }
}

/**
Produces an effect similar to that produced by the CIDifferenceBlendMode filter but with lower contrast. Source image sample values that are black do not produce a change; white inverts the background color values.

[More Information](http: //developer.apple.com/cgi-bin/apple_ref.cgi?apple_ref=//apple_ref/doc/filter/ci/CIExclusionBlendMode)
*/
public class ExclusionBlendMode: Filter {

    let name = "CIExclusionBlendMode"

    public init(inputImage: CIImage? = nil, inputBackgroundImage: CIImage? = nil) {
        super.init(name: "CIExclusionBlendMode")

        if let inputImage = inputImage {
            self.inputImage = inputImage
        }
        if let inputBackgroundImage = inputBackgroundImage {
            self.inputBackgroundImage = inputBackgroundImage
        }
    }


    /// The image to use as an input image. For filters that also use a background image, this is the foreground image.
    public var inputImage: CIImage? {
        get {
            return valueForKey("inputImage") as? CIImage
        }
        set {
            setValue(newValue, forKey: "inputImage")
        }
    }

    /// The image to use as a background image.
    public var inputBackgroundImage: CIImage? {
        get {
            return valueForKey("inputBackgroundImage") as? CIImage
        }
        set {
            setValue(newValue, forKey: "inputBackgroundImage")
        }
    }
}

/**
Adjusts the exposure setting for an image similar to the way you control exposure for a camera when you change the F-stop.

[More Information](http: //developer.apple.com/cgi-bin/apple_ref.cgi?apple_ref=//apple_ref/doc/filter/ci/CIExposureAdjust)
*/
public class ExposureAdjust: Filter {

    let name = "CIExposureAdjust"

    public init(inputImage: CIImage? = nil, inputEV: CGFloat? = nil) {
        super.init(name: "CIExposureAdjust")

        if let inputImage = inputImage {
            self.inputImage = inputImage
        }
        if let inputEV = inputEV {
            self.inputEV = inputEV
        }
    }


    /// The image to use as an input image. For filters that also use a background image, this is the foreground image.
    public var inputImage: CIImage? {
        get {
            return valueForKey("inputImage") as? CIImage
        }
        set {
            setValue(newValue, forKey: "inputImage")
        }
    }

    /// The amount to adjust the exposure of the image by. The larger the value, the brighter the exposure.
    public var inputEV: CGFloat? {
        get {
            return valueForKey("inputEV") as? CGFloat
        }
        set {
            setValue(newValue, forKey: "inputEV")
        }
    }
}

/**
Maps luminance to a color ramp of two colors. False color is often used to process astronomical and other scientific data, such as ultraviolet and x-ray images.

[More Information](http: //developer.apple.com/cgi-bin/apple_ref.cgi?apple_ref=//apple_ref/doc/filter/ci/CIFalseColor)
*/
public class FalseColor: Filter {

    let name = "CIFalseColor"

    public init(inputImage: CIImage? = nil, inputColor0: CIColor? = nil, inputColor1: CIColor? = nil) {
        super.init(name: "CIFalseColor")

        if let inputImage = inputImage {
            self.inputImage = inputImage
        }
        if let inputColor0 = inputColor0 {
            self.inputColor0 = inputColor0
        }
        if let inputColor1 = inputColor1 {
            self.inputColor1 = inputColor1
        }
    }


    /// The image to use as an input image. For filters that also use a background image, this is the foreground image.
    public var inputImage: CIImage? {
        get {
            return valueForKey("inputImage") as? CIImage
        }
        set {
            setValue(newValue, forKey: "inputImage")
        }
    }

    /// The first color to use for the color ramp.
    public var inputColor0: CIColor? {
        get {
            return valueForKey("inputColor0") as? CIColor
        }
        set {
            setValue(newValue, forKey: "inputColor0")
        }
    }

    /// The second color to use for the color ramp.
    public var inputColor1: CIColor? {
        get {
            return valueForKey("inputColor1") as? CIColor
        }
        set {
            setValue(newValue, forKey: "inputColor1")
        }
    }
}

/**
Transitions from one image to another by creating a flash. The flash originates from a point you specify. Small at first, it rapidly expands until the image frame is completely filled with the flash color. As the color fades, the target image begins to appear.

[More Information](http: //developer.apple.com/cgi-bin/apple_ref.cgi?apple_ref=//apple_ref/doc/filter/ci/CIFlashTransition)
*/
public class FlashTransition: Filter {

    let name = "CIFlashTransition"

    public init(inputImage: CIImage? = nil, inputTargetImage: CIImage? = nil, inputCenter: CIVector? = nil, inputExtent: CIVector? = nil, inputColor: CIColor? = nil, inputTime: CGFloat? = nil, inputMaxStriationRadius: CGFloat? = nil, inputStriationStrength: CGFloat? = nil, inputStriationContrast: CGFloat? = nil, inputFadeThreshold: CGFloat? = nil) {
        super.init(name: "CIFlashTransition")

        if let inputImage = inputImage {
            self.inputImage = inputImage
        }
        if let inputTargetImage = inputTargetImage {
            self.inputTargetImage = inputTargetImage
        }
        if let inputCenter = inputCenter {
            self.inputCenter = inputCenter
        }
        if let inputExtent = inputExtent {
            self.inputExtent = inputExtent
        }
        if let inputColor = inputColor {
            self.inputColor = inputColor
        }
        if let inputTime = inputTime {
            self.inputTime = inputTime
        }
        if let inputMaxStriationRadius = inputMaxStriationRadius {
            self.inputMaxStriationRadius = inputMaxStriationRadius
        }
        if let inputStriationStrength = inputStriationStrength {
            self.inputStriationStrength = inputStriationStrength
        }
        if let inputStriationContrast = inputStriationContrast {
            self.inputStriationContrast = inputStriationContrast
        }
        if let inputFadeThreshold = inputFadeThreshold {
            self.inputFadeThreshold = inputFadeThreshold
        }
    }


    /// The image to use as an input image. For filters that also use a background image, this is the foreground image.
    public var inputImage: CIImage? {
        get {
            return valueForKey("inputImage") as? CIImage
        }
        set {
            setValue(newValue, forKey: "inputImage")
        }
    }

    /// The target image for a transition.
    public var inputTargetImage: CIImage? {
        get {
            return valueForKey("inputTargetImage") as? CIImage
        }
        set {
            setValue(newValue, forKey: "inputTargetImage")
        }
    }

    /// The x and y position to use as the center of the effect
    public var inputCenter: CIVector? {
        get {
            return valueForKey("inputCenter") as? CIVector
        }
        set {
            setValue(newValue, forKey: "inputCenter")
        }
    }

    /// The extent of the flash.
    public var inputExtent: CIVector? {
        get {
            return valueForKey("inputExtent") as? CIVector
        }
        set {
            setValue(newValue, forKey: "inputExtent")
        }
    }

    /// The color of the light rays emanating from the flash.
    public var inputColor: CIColor? {
        get {
            return valueForKey("inputColor") as? CIColor
        }
        set {
            setValue(newValue, forKey: "inputColor")
        }
    }

    /// The parametric time of the transition. This value drives the transition from start (at time 0) to end (at time 1).
    public var inputTime: CGFloat? {
        get {
            return valueForKey("inputTime") as? CGFloat
        }
        set {
            setValue(newValue, forKey: "inputTime")
        }
    }

    /// The radius of the light rays emanating from the flash.
    public var inputMaxStriationRadius: CGFloat? {
        get {
            return valueForKey("inputMaxStriationRadius") as? CGFloat
        }
        set {
            setValue(newValue, forKey: "inputMaxStriationRadius")
        }
    }

    /// The strength of the light rays emanating from the flash.
    public var inputStriationStrength: CGFloat? {
        get {
            return valueForKey("inputStriationStrength") as? CGFloat
        }
        set {
            setValue(newValue, forKey: "inputStriationStrength")
        }
    }

    /// The contrast of the light rays emanating from the flash.
    public var inputStriationContrast: CGFloat? {
        get {
            return valueForKey("inputStriationContrast") as? CGFloat
        }
        set {
            setValue(newValue, forKey: "inputStriationContrast")
        }
    }

    /// The amount of fade between the flash and the target image. The higher the value, the more flash time and the less fade time.
    public var inputFadeThreshold: CGFloat? {
        get {
            return valueForKey("inputFadeThreshold") as? CGFloat
        }
        set {
            setValue(newValue, forKey: "inputFadeThreshold")
        }
    }
}

/**
Produces a tiled image from a source image by applying a 4-way reflected symmetry.

[More Information](http: //developer.apple.com/cgi-bin/apple_ref.cgi?apple_ref=//apple_ref/doc/filter/ci/CIFourfoldReflectedTile)
*/
public class FourfoldReflectedTile: Filter {

    let name = "CIFourfoldReflectedTile"

    public init(inputImage: CIImage? = nil, inputCenter: CIVector? = nil, inputAngle: CGFloat? = nil, inputWidth: CGFloat? = nil, inputAcuteAngle: CGFloat? = nil) {
        super.init(name: "CIFourfoldReflectedTile")

        if let inputImage = inputImage {
            self.inputImage = inputImage
        }
        if let inputCenter = inputCenter {
            self.inputCenter = inputCenter
        }
        if let inputAngle = inputAngle {
            self.inputAngle = inputAngle
        }
        if let inputWidth = inputWidth {
            self.inputWidth = inputWidth
        }
        if let inputAcuteAngle = inputAcuteAngle {
            self.inputAcuteAngle = inputAcuteAngle
        }
    }


    /// The image to use as an input image. For filters that also use a background image, this is the foreground image.
    public var inputImage: CIImage? {
        get {
            return valueForKey("inputImage") as? CIImage
        }
        set {
            setValue(newValue, forKey: "inputImage")
        }
    }

    /// The x and y position to use as the center of the effect
    public var inputCenter: CIVector? {
        get {
            return valueForKey("inputCenter") as? CIVector
        }
        set {
            setValue(newValue, forKey: "inputCenter")
        }
    }

    /// The angle (in radians) of the tiled pattern.
    public var inputAngle: CGFloat? {
        get {
            return valueForKey("inputAngle") as? CGFloat
        }
        set {
            setValue(newValue, forKey: "inputAngle")
        }
    }

    /// The width of a tile.
    public var inputWidth: CGFloat? {
        get {
            return valueForKey("inputWidth") as? CGFloat
        }
        set {
            setValue(newValue, forKey: "inputWidth")
        }
    }

    /// The primary angle for the repeating reflected tile. Small values create thin diamond tiles, and higher values create fatter reflected tiles.
    public var inputAcuteAngle: CGFloat? {
        get {
            return valueForKey("inputAcuteAngle") as? CGFloat
        }
        set {
            setValue(newValue, forKey: "inputAcuteAngle")
        }
    }
}

/**
Produces a tiled image from a source image by rotating the source at increments of 90 degrees.

[More Information](http: //developer.apple.com/cgi-bin/apple_ref.cgi?apple_ref=//apple_ref/doc/filter/ci/CIFourfoldRotatedTile)
*/
public class FourfoldRotatedTile: Filter {

    let name = "CIFourfoldRotatedTile"

    public init(inputImage: CIImage? = nil, inputCenter: CIVector? = nil, inputAngle: CGFloat? = nil, inputWidth: CGFloat? = nil) {
        super.init(name: "CIFourfoldRotatedTile")

        if let inputImage = inputImage {
            self.inputImage = inputImage
        }
        if let inputCenter = inputCenter {
            self.inputCenter = inputCenter
        }
        if let inputAngle = inputAngle {
            self.inputAngle = inputAngle
        }
        if let inputWidth = inputWidth {
            self.inputWidth = inputWidth
        }
    }


    /// The image to use as an input image. For filters that also use a background image, this is the foreground image.
    public var inputImage: CIImage? {
        get {
            return valueForKey("inputImage") as? CIImage
        }
        set {
            setValue(newValue, forKey: "inputImage")
        }
    }

    /// The x and y position to use as the center of the effect
    public var inputCenter: CIVector? {
        get {
            return valueForKey("inputCenter") as? CIVector
        }
        set {
            setValue(newValue, forKey: "inputCenter")
        }
    }

    /// The angle (in radians) of the tiled pattern.
    public var inputAngle: CGFloat? {
        get {
            return valueForKey("inputAngle") as? CGFloat
        }
        set {
            setValue(newValue, forKey: "inputAngle")
        }
    }

    /// The width of a tile.
    public var inputWidth: CGFloat? {
        get {
            return valueForKey("inputWidth") as? CGFloat
        }
        set {
            setValue(newValue, forKey: "inputWidth")
        }
    }
}

/**
Produces a tiled image from a source image by applying 4 translation operations.

[More Information](http: //developer.apple.com/cgi-bin/apple_ref.cgi?apple_ref=//apple_ref/doc/filter/ci/CIFourfoldTranslatedTile)
*/
public class FourfoldTranslatedTile: Filter {

    let name = "CIFourfoldTranslatedTile"

    public init(inputImage: CIImage? = nil, inputCenter: CIVector? = nil, inputAngle: CGFloat? = nil, inputWidth: CGFloat? = nil, inputAcuteAngle: CGFloat? = nil) {
        super.init(name: "CIFourfoldTranslatedTile")

        if let inputImage = inputImage {
            self.inputImage = inputImage
        }
        if let inputCenter = inputCenter {
            self.inputCenter = inputCenter
        }
        if let inputAngle = inputAngle {
            self.inputAngle = inputAngle
        }
        if let inputWidth = inputWidth {
            self.inputWidth = inputWidth
        }
        if let inputAcuteAngle = inputAcuteAngle {
            self.inputAcuteAngle = inputAcuteAngle
        }
    }


    /// The image to use as an input image. For filters that also use a background image, this is the foreground image.
    public var inputImage: CIImage? {
        get {
            return valueForKey("inputImage") as? CIImage
        }
        set {
            setValue(newValue, forKey: "inputImage")
        }
    }

    /// The x and y position to use as the center of the effect
    public var inputCenter: CIVector? {
        get {
            return valueForKey("inputCenter") as? CIVector
        }
        set {
            setValue(newValue, forKey: "inputCenter")
        }
    }

    /// The angle (in radians) of the tiled pattern.
    public var inputAngle: CGFloat? {
        get {
            return valueForKey("inputAngle") as? CGFloat
        }
        set {
            setValue(newValue, forKey: "inputAngle")
        }
    }

    /// The width of a tile.
    public var inputWidth: CGFloat? {
        get {
            return valueForKey("inputWidth") as? CGFloat
        }
        set {
            setValue(newValue, forKey: "inputWidth")
        }
    }

    /// The primary angle for the repeating translated tile. Small values create thin diamond tiles, and higher values create fatter translated tiles.
    public var inputAcuteAngle: CGFloat? {
        get {
            return valueForKey("inputAcuteAngle") as? CGFloat
        }
        set {
            setValue(newValue, forKey: "inputAcuteAngle")
        }
    }
}

/**
Adjusts midtone brightness. This filter is typically used to compensate for nonlinear effects of displays. Adjusting the gamma effectively changes the slope of the transition between black and white.

[More Information](http: //developer.apple.com/cgi-bin/apple_ref.cgi?apple_ref=//apple_ref/doc/filter/ci/CIGammaAdjust)
*/
public class GammaAdjust: Filter {

    let name = "CIGammaAdjust"

    public init(inputImage: CIImage? = nil, inputPower: CGFloat? = nil) {
        super.init(name: "CIGammaAdjust")

        if let inputImage = inputImage {
            self.inputImage = inputImage
        }
        if let inputPower = inputPower {
            self.inputPower = inputPower
        }
    }


    /// The image to use as an input image. For filters that also use a background image, this is the foreground image.
    public var inputImage: CIImage? {
        get {
            return valueForKey("inputImage") as? CIImage
        }
        set {
            setValue(newValue, forKey: "inputImage")
        }
    }

    /// A gamma value to use to correct image brightness. The larger the value, the darker the result.
    public var inputPower: CGFloat? {
        get {
            return valueForKey("inputPower") as? CGFloat
        }
        set {
            setValue(newValue, forKey: "inputPower")
        }
    }
}

/**
Spreads source pixels by an amount specified by a Gaussian distribution.

[More Information](http: //developer.apple.com/cgi-bin/apple_ref.cgi?apple_ref=//apple_ref/doc/filter/ci/CIGaussianBlur)
*/
public class GaussianBlur: Filter {

    let name = "CIGaussianBlur"

    public init(inputImage: CIImage? = nil, inputRadius: CGFloat? = nil) {
        super.init(name: "CIGaussianBlur")

        if let inputImage = inputImage {
            self.inputImage = inputImage
        }
        if let inputRadius = inputRadius {
            self.inputRadius = inputRadius
        }
    }


    /// The image to use as an input image. For filters that also use a background image, this is the foreground image.
    public var inputImage: CIImage? {
        get {
            return valueForKey("inputImage") as? CIImage
        }
        set {
            setValue(newValue, forKey: "inputImage")
        }
    }

    /// The radius determines how many pixels are used to create the blur. The larger the radius, the blurrier the result.
    public var inputRadius: CGFloat? {
        get {
            return valueForKey("inputRadius") as? CGFloat
        }
        set {
            setValue(newValue, forKey: "inputRadius")
        }
    }
}

/**
Generates a gradient that varies from one color to another using a Gaussian distribution.

[More Information](http: //developer.apple.com/cgi-bin/apple_ref.cgi?apple_ref=//apple_ref/doc/filter/ci/CIGaussianGradient)
*/
public class GaussianGradient: Filter {

    let name = "CIGaussianGradient"

    public init(inputCenter: CIVector? = nil, inputColor0: CIColor? = nil, inputColor1: CIColor? = nil, inputRadius: CGFloat? = nil) {
        super.init(name: "CIGaussianGradient")

        if let inputCenter = inputCenter {
            self.inputCenter = inputCenter
        }
        if let inputColor0 = inputColor0 {
            self.inputColor0 = inputColor0
        }
        if let inputColor1 = inputColor1 {
            self.inputColor1 = inputColor1
        }
        if let inputRadius = inputRadius {
            self.inputRadius = inputRadius
        }
    }


    /// The center of the effect as x and y coordinates.
    public var inputCenter: CIVector? {
        get {
            return valueForKey("inputCenter") as? CIVector
        }
        set {
            setValue(newValue, forKey: "inputCenter")
        }
    }

    /// The first color to use in the gradient.
    public var inputColor0: CIColor? {
        get {
            return valueForKey("inputColor0") as? CIColor
        }
        set {
            setValue(newValue, forKey: "inputColor0")
        }
    }

    /// The second color to use in the gradient.
    public var inputColor1: CIColor? {
        get {
            return valueForKey("inputColor1") as? CIColor
        }
        set {
            setValue(newValue, forKey: "inputColor1")
        }
    }

    /// The radius of the Gaussian distribution.
    public var inputRadius: CGFloat? {
        get {
            return valueForKey("inputRadius") as? CGFloat
        }
        set {
            setValue(newValue, forKey: "inputRadius")
        }
    }
}

/**
Distorts an image by applying a glass-like texture. The raised portions of the output image are the result of applying a texture map.

[More Information](http: //developer.apple.com/cgi-bin/apple_ref.cgi?apple_ref=//apple_ref/doc/filter/ci/CIGlassDistortion)
*/
public class GlassDistortion: Filter {

    let name = "CIGlassDistortion"

    public init(inputImage: CIImage? = nil, inputTexture: CIImage? = nil, inputCenter: CIVector? = nil, inputScale: CGFloat? = nil) {
        super.init(name: "CIGlassDistortion")

        if let inputImage = inputImage {
            self.inputImage = inputImage
        }
        if let inputTexture = inputTexture {
            self.inputTexture = inputTexture
        }
        if let inputCenter = inputCenter {
            self.inputCenter = inputCenter
        }
        if let inputScale = inputScale {
            self.inputScale = inputScale
        }
    }


    /// The image to use as an input image. For filters that also use a background image, this is the foreground image.
    public var inputImage: CIImage? {
        get {
            return valueForKey("inputImage") as? CIImage
        }
        set {
            setValue(newValue, forKey: "inputImage")
        }
    }

    /// A texture to apply to the source image.
    public var inputTexture: CIImage? {
        get {
            return valueForKey("inputTexture") as? CIImage
        }
        set {
            setValue(newValue, forKey: "inputTexture")
        }
    }

    /// The center of the effect as x and y coordinates.
    public var inputCenter: CIVector? {
        get {
            return valueForKey("inputCenter") as? CIVector
        }
        set {
            setValue(newValue, forKey: "inputCenter")
        }
    }

    /// The amount of texturing of the resulting image. The larger the value, the greater the texturing.
    public var inputScale: CGFloat? {
        get {
            return valueForKey("inputScale") as? CGFloat
        }
        set {
            setValue(newValue, forKey: "inputScale")
        }
    }
}

/**
Creates a lozenge-shaped lens and distorts the portion of the image over which the lens is placed.

[More Information](http: //developer.apple.com/cgi-bin/apple_ref.cgi?apple_ref=//apple_ref/doc/filter/ci/CIGlassLozenge)
*/
public class GlassLozenge: Filter {

    let name = "CIGlassLozenge"

    public init(inputImage: CIImage? = nil, inputPoint0: CIVector? = nil, inputPoint1: CIVector? = nil, inputRadius: CGFloat? = nil, inputRefraction: CGFloat? = nil) {
        super.init(name: "CIGlassLozenge")

        if let inputImage = inputImage {
            self.inputImage = inputImage
        }
        if let inputPoint0 = inputPoint0 {
            self.inputPoint0 = inputPoint0
        }
        if let inputPoint1 = inputPoint1 {
            self.inputPoint1 = inputPoint1
        }
        if let inputRadius = inputRadius {
            self.inputRadius = inputRadius
        }
        if let inputRefraction = inputRefraction {
            self.inputRefraction = inputRefraction
        }
    }


    /// The image to use as an input image. For filters that also use a background image, this is the foreground image.
    public var inputImage: CIImage? {
        get {
            return valueForKey("inputImage") as? CIImage
        }
        set {
            setValue(newValue, forKey: "inputImage")
        }
    }

    /// The x and y position that defines the center of the circle at one end of the lozenge.
    public var inputPoint0: CIVector? {
        get {
            return valueForKey("inputPoint0") as? CIVector
        }
        set {
            setValue(newValue, forKey: "inputPoint0")
        }
    }

    /// The x and y position that defines the center of the circle at the other end of the lozenge.
    public var inputPoint1: CIVector? {
        get {
            return valueForKey("inputPoint1") as? CIVector
        }
        set {
            setValue(newValue, forKey: "inputPoint1")
        }
    }

    /// The radius of the lozenge. The larger the radius, wider the extent of the distortion.
    public var inputRadius: CGFloat? {
        get {
            return valueForKey("inputRadius") as? CGFloat
        }
        set {
            setValue(newValue, forKey: "inputRadius")
        }
    }

    /// The refraction of the glass.
    public var inputRefraction: CGFloat? {
        get {
            return valueForKey("inputRefraction") as? CGFloat
        }
        set {
            setValue(newValue, forKey: "inputRefraction")
        }
    }
}

/**
Produces a tiled image from a source image by translating and smearing the image.

[More Information](http: //developer.apple.com/cgi-bin/apple_ref.cgi?apple_ref=//apple_ref/doc/filter/ci/CIGlideReflectedTile)
*/
public class GlideReflectedTile: Filter {

    let name = "CIGlideReflectedTile"

    public init(inputImage: CIImage? = nil, inputCenter: CIVector? = nil, inputAngle: CGFloat? = nil, inputWidth: CGFloat? = nil) {
        super.init(name: "CIGlideReflectedTile")

        if let inputImage = inputImage {
            self.inputImage = inputImage
        }
        if let inputCenter = inputCenter {
            self.inputCenter = inputCenter
        }
        if let inputAngle = inputAngle {
            self.inputAngle = inputAngle
        }
        if let inputWidth = inputWidth {
            self.inputWidth = inputWidth
        }
    }


    /// The image to use as an input image. For filters that also use a background image, this is the foreground image.
    public var inputImage: CIImage? {
        get {
            return valueForKey("inputImage") as? CIImage
        }
        set {
            setValue(newValue, forKey: "inputImage")
        }
    }

    /// The x and y position to use as the center of the effect
    public var inputCenter: CIVector? {
        get {
            return valueForKey("inputCenter") as? CIVector
        }
        set {
            setValue(newValue, forKey: "inputCenter")
        }
    }

    /// The angle (in radians) of the tiled pattern.
    public var inputAngle: CGFloat? {
        get {
            return valueForKey("inputAngle") as? CGFloat
        }
        set {
            setValue(newValue, forKey: "inputAngle")
        }
    }

    /// The width of a tile.
    public var inputWidth: CGFloat? {
        get {
            return valueForKey("inputWidth") as? CGFloat
        }
        set {
            setValue(newValue, forKey: "inputWidth")
        }
    }
}

/**
Dulls the highlights of an image.

[More Information](http: //developer.apple.com/cgi-bin/apple_ref.cgi?apple_ref=//apple_ref/doc/filter/ci/CIGloom)
*/
public class Gloom: Filter {

    let name = "CIGloom"

    public init(inputImage: CIImage? = nil, inputRadius: CGFloat? = nil, inputIntensity: CGFloat? = nil) {
        super.init(name: "CIGloom")

        if let inputImage = inputImage {
            self.inputImage = inputImage
        }
        if let inputRadius = inputRadius {
            self.inputRadius = inputRadius
        }
        if let inputIntensity = inputIntensity {
            self.inputIntensity = inputIntensity
        }
    }


    /// The image to use as an input image. For filters that also use a background image, this is the foreground image.
    public var inputImage: CIImage? {
        get {
            return valueForKey("inputImage") as? CIImage
        }
        set {
            setValue(newValue, forKey: "inputImage")
        }
    }

    /// The radius determines how many pixels are used to create the effect. The larger the radius, the greater the effect.
    public var inputRadius: CGFloat? {
        get {
            return valueForKey("inputRadius") as? CGFloat
        }
        set {
            setValue(newValue, forKey: "inputRadius")
        }
    }

    /// The intensity of the effect. A value of 0.0 is no effect. A value of 1.0 is the maximum effect.
    public var inputIntensity: CGFloat? {
        get {
            return valueForKey("inputIntensity") as? CGFloat
        }
        set {
            setValue(newValue, forKey: "inputIntensity")
        }
    }
}

/**
Either multiplies or screens colors, depending on the source image sample color. If the source image sample color is lighter than 50% gray, the background is lightened, similar to screening. If the source image sample color is darker than 50% gray, the background is darkened, similar to multiplying. If the source image sample color is equal to 50% gray, the source image is not changed. Image samples that are equal to pure black or pure white result in pure black or white. The overall effect is similar to what you would achieve by shining a harsh spotlight on the source image.

[More Information](http: //developer.apple.com/cgi-bin/apple_ref.cgi?apple_ref=//apple_ref/doc/filter/ci/CIHardLightBlendMode)
*/
public class HardLightBlendMode: Filter {

    let name = "CIHardLightBlendMode"

    public init(inputImage: CIImage? = nil, inputBackgroundImage: CIImage? = nil) {
        super.init(name: "CIHardLightBlendMode")

        if let inputImage = inputImage {
            self.inputImage = inputImage
        }
        if let inputBackgroundImage = inputBackgroundImage {
            self.inputBackgroundImage = inputBackgroundImage
        }
    }


    /// The image to use as an input image. For filters that also use a background image, this is the foreground image.
    public var inputImage: CIImage? {
        get {
            return valueForKey("inputImage") as? CIImage
        }
        set {
            setValue(newValue, forKey: "inputImage")
        }
    }

    /// The image to use as a background image.
    public var inputBackgroundImage: CIImage? {
        get {
            return valueForKey("inputBackgroundImage") as? CIImage
        }
        set {
            setValue(newValue, forKey: "inputBackgroundImage")
        }
    }
}

/**
Simulates the hatched pattern of a halftone screen.

[More Information](http: //developer.apple.com/cgi-bin/apple_ref.cgi?apple_ref=//apple_ref/doc/filter/ci/CIHatchedScreen)
*/
public class HatchedScreen: Filter {

    let name = "CIHatchedScreen"

    public init(inputImage: CIImage? = nil, inputCenter: CIVector? = nil, inputAngle: CGFloat? = nil, inputWidth: CGFloat? = nil, inputSharpness: CGFloat? = nil) {
        super.init(name: "CIHatchedScreen")

        if let inputImage = inputImage {
            self.inputImage = inputImage
        }
        if let inputCenter = inputCenter {
            self.inputCenter = inputCenter
        }
        if let inputAngle = inputAngle {
            self.inputAngle = inputAngle
        }
        if let inputWidth = inputWidth {
            self.inputWidth = inputWidth
        }
        if let inputSharpness = inputSharpness {
            self.inputSharpness = inputSharpness
        }
    }


    /// The image to use as an input image. For filters that also use a background image, this is the foreground image.
    public var inputImage: CIImage? {
        get {
            return valueForKey("inputImage") as? CIImage
        }
        set {
            setValue(newValue, forKey: "inputImage")
        }
    }

    /// The x and y position to use as the center of the hatched screen pattern
    public var inputCenter: CIVector? {
        get {
            return valueForKey("inputCenter") as? CIVector
        }
        set {
            setValue(newValue, forKey: "inputCenter")
        }
    }

    /// The angle of the pattern.
    public var inputAngle: CGFloat? {
        get {
            return valueForKey("inputAngle") as? CGFloat
        }
        set {
            setValue(newValue, forKey: "inputAngle")
        }
    }

    /// The distance between lines in the pattern.
    public var inputWidth: CGFloat? {
        get {
            return valueForKey("inputWidth") as? CGFloat
        }
        set {
            setValue(newValue, forKey: "inputWidth")
        }
    }

    /// The amount of sharpening to apply.
    public var inputSharpness: CGFloat? {
        get {
            return valueForKey("inputSharpness") as? CGFloat
        }
        set {
            setValue(newValue, forKey: "inputSharpness")
        }
    }
}

/**
Produces a continuous three-dimensional, loft-shaped height field from a grayscale mask. The white values of the mask define those pixels that are inside the height field while the black values define those pixels that are outside. The field varies smoothly and continuously inside the mask, reaching the value 0 at the edge of the mask. You can use this filter with the CIShadedMaterial filter to produce extremely realistic shaded objects.

[More Information](http: //developer.apple.com/cgi-bin/apple_ref.cgi?apple_ref=//apple_ref/doc/filter/ci/CIHeightFieldFromMask)
*/
public class HeightFieldFromMask: Filter {

    let name = "CIHeightFieldFromMask"

    public init(inputImage: CIImage? = nil, inputRadius: CGFloat? = nil) {
        super.init(name: "CIHeightFieldFromMask")

        if let inputImage = inputImage {
            self.inputImage = inputImage
        }
        if let inputRadius = inputRadius {
            self.inputRadius = inputRadius
        }
    }


    /// The white values of the mask define those pixels that are inside the height field while the black values define those pixels that are outside. The field varies smoothly and continuously inside the mask, reaching the value 0 at the edge of the mask.
    public var inputImage: CIImage? {
        get {
            return valueForKey("inputImage") as? CIImage
        }
        set {
            setValue(newValue, forKey: "inputImage")
        }
    }

    /// The distance from the edge of the mask for the smooth transition is proportional to the input radius. Larger values make the transition smoother and more pronounced. Smaller values make the transition approximate a fillet radius.
    public var inputRadius: CGFloat? {
        get {
            return valueForKey("inputRadius") as? CGFloat
        }
        set {
            setValue(newValue, forKey: "inputRadius")
        }
    }
}

/**
Displays an image as colored hexagons whose color is an average of the pixels they replace.

[More Information](http: //developer.apple.com/cgi-bin/apple_ref.cgi?apple_ref=//apple_ref/doc/filter/ci/CIHexagonalPixellate)
*/
public class HexagonalPixellate: Filter {

    let name = "CIHexagonalPixellate"

    public init(inputImage: CIImage? = nil, inputCenter: CIVector? = nil, inputScale: CGFloat? = nil) {
        super.init(name: "CIHexagonalPixellate")

        if let inputImage = inputImage {
            self.inputImage = inputImage
        }
        if let inputCenter = inputCenter {
            self.inputCenter = inputCenter
        }
        if let inputScale = inputScale {
            self.inputScale = inputScale
        }
    }


    /// The image to use as an input image. For filters that also use a background image, this is the foreground image.
    public var inputImage: CIImage? {
        get {
            return valueForKey("inputImage") as? CIImage
        }
        set {
            setValue(newValue, forKey: "inputImage")
        }
    }

    /// The x and y position to use as the center of the effect
    public var inputCenter: CIVector? {
        get {
            return valueForKey("inputCenter") as? CIVector
        }
        set {
            setValue(newValue, forKey: "inputCenter")
        }
    }

    /// The scale determines the size of the hexagons. Larger values result in larger hexagons.
    public var inputScale: CGFloat? {
        get {
            return valueForKey("inputScale") as? CGFloat
        }
        set {
            setValue(newValue, forKey: "inputScale")
        }
    }
}

/**
Adjust the tonal mapping of an image while preserving spatial detail

[More Information](http: //developer.apple.com/cgi-bin/apple_ref.cgi?apple_ref=//apple_ref/doc/filter/ci/CIHighlightShadowAdjust)
*/
public class HighlightShadowAdjust: Filter {

    let name = "CIHighlightShadowAdjust"

    public init(inputImage: CIImage? = nil, inputRadius: CGFloat? = nil, inputShadowAmount: CGFloat? = nil, inputHighlightAmount: CGFloat? = nil) {
        super.init(name: "CIHighlightShadowAdjust")

        if let inputImage = inputImage {
            self.inputImage = inputImage
        }
        if let inputRadius = inputRadius {
            self.inputRadius = inputRadius
        }
        if let inputShadowAmount = inputShadowAmount {
            self.inputShadowAmount = inputShadowAmount
        }
        if let inputHighlightAmount = inputHighlightAmount {
            self.inputHighlightAmount = inputHighlightAmount
        }
    }


    /// The image to use as an input image. For filters that also use a background image, this is the foreground image.
    public var inputImage: CIImage? {
        get {
            return valueForKey("inputImage") as? CIImage
        }
        set {
            setValue(newValue, forKey: "inputImage")
        }
    }

    /// Shadow Hightlight Radius
    public var inputRadius: CGFloat? {
        get {
            return valueForKey("inputRadius") as? CGFloat
        }
        set {
            setValue(newValue, forKey: "inputRadius")
        }
    }

    /// The amount of adjustment to the shadows of the image.
    public var inputShadowAmount: CGFloat? {
        get {
            return valueForKey("inputShadowAmount") as? CGFloat
        }
        set {
            setValue(newValue, forKey: "inputShadowAmount")
        }
    }

    /// The amount of adjustment to the highlights of the image.
    public var inputHighlightAmount: CGFloat? {
        get {
            return valueForKey("inputHighlightAmount") as? CGFloat
        }
        set {
            setValue(newValue, forKey: "inputHighlightAmount")
        }
    }
}

/**
Generates a displayable histogram image from the output of the CIAreaHistogram filter.

[More Information](http: //developer.apple.com/cgi-bin/apple_ref.cgi?apple_ref=//apple_ref/doc/filter/ci/CIHistogramDisplayFilter)
*/
public class HistogramDisplayFilter: Filter {

    let name = "CIHistogramDisplayFilter"

    public init(inputImage: CIImage? = nil, inputHeight: CGFloat? = nil, inputHighLimit: CGFloat? = nil, inputLowLimit: CGFloat? = nil) {
        super.init(name: "CIHistogramDisplayFilter")

        if let inputImage = inputImage {
            self.inputImage = inputImage
        }
        if let inputHeight = inputHeight {
            self.inputHeight = inputHeight
        }
        if let inputHighLimit = inputHighLimit {
            self.inputHighLimit = inputHighLimit
        }
        if let inputLowLimit = inputLowLimit {
            self.inputLowLimit = inputLowLimit
        }
    }


    /// The image to use as an input image. For filters that also use a background image, this is the foreground image.
    public var inputImage: CIImage? {
        get {
            return valueForKey("inputImage") as? CIImage
        }
        set {
            setValue(newValue, forKey: "inputImage")
        }
    }

    /// The height of the displayable histogram image.
    public var inputHeight: CGFloat? {
        get {
            return valueForKey("inputHeight") as? CGFloat
        }
        set {
            setValue(newValue, forKey: "inputHeight")
        }
    }

    /// The fraction of the right portion of the histogram image to make lighter.
    public var inputHighLimit: CGFloat? {
        get {
            return valueForKey("inputHighLimit") as? CGFloat
        }
        set {
            setValue(newValue, forKey: "inputHighLimit")
        }
    }

    /// The fraction of the left portion of the histogram image to make darker
    public var inputLowLimit: CGFloat? {
        get {
            return valueForKey("inputLowLimit") as? CGFloat
        }
        set {
            setValue(newValue, forKey: "inputLowLimit")
        }
    }
}

/**
Creates a circular area that pushes the image pixels outward, distorting those pixels closest to the circle the most.

[More Information](http: //developer.apple.com/cgi-bin/apple_ref.cgi?apple_ref=//apple_ref/doc/filter/ci/CIHoleDistortion)
*/
public class HoleDistortion: Filter {

    let name = "CIHoleDistortion"

    public init(inputImage: CIImage? = nil, inputCenter: CIVector? = nil, inputRadius: CGFloat? = nil) {
        super.init(name: "CIHoleDistortion")

        if let inputImage = inputImage {
            self.inputImage = inputImage
        }
        if let inputCenter = inputCenter {
            self.inputCenter = inputCenter
        }
        if let inputRadius = inputRadius {
            self.inputRadius = inputRadius
        }
    }


    /// The image to use as an input image. For filters that also use a background image, this is the foreground image.
    public var inputImage: CIImage? {
        get {
            return valueForKey("inputImage") as? CIImage
        }
        set {
            setValue(newValue, forKey: "inputImage")
        }
    }

    /// The center of the effect as x and y coordinates.
    public var inputCenter: CIVector? {
        get {
            return valueForKey("inputCenter") as? CIVector
        }
        set {
            setValue(newValue, forKey: "inputCenter")
        }
    }

    /// The radius determines how many pixels are used to create the distortion. The larger the radius, wider the extent of the distortion.
    public var inputRadius: CGFloat? {
        get {
            return valueForKey("inputRadius") as? CGFloat
        }
        set {
            setValue(newValue, forKey: "inputRadius")
        }
    }
}

/**
Changes the overall hue, or tint, of the source pixels.

[More Information](http: //developer.apple.com/cgi-bin/apple_ref.cgi?apple_ref=//apple_ref/doc/filter/ci/CIHueAdjust)
*/
public class HueAdjust: Filter {

    let name = "CIHueAdjust"

    public init(inputImage: CIImage? = nil, inputAngle: CGFloat? = nil) {
        super.init(name: "CIHueAdjust")

        if let inputImage = inputImage {
            self.inputImage = inputImage
        }
        if let inputAngle = inputAngle {
            self.inputAngle = inputAngle
        }
    }


    /// The image to use as an input image. For filters that also use a background image, this is the foreground image.
    public var inputImage: CIImage? {
        get {
            return valueForKey("inputImage") as? CIImage
        }
        set {
            setValue(newValue, forKey: "inputImage")
        }
    }

    /// An angle (in radians) to use to correct the hue of an image.
    public var inputAngle: CGFloat? {
        get {
            return valueForKey("inputAngle") as? CGFloat
        }
        set {
            setValue(newValue, forKey: "inputAngle")
        }
    }
}

/**
Uses the luminance and saturation values of the background with the hue of the source image.

[More Information](http: //developer.apple.com/cgi-bin/apple_ref.cgi?apple_ref=//apple_ref/doc/filter/ci/CIHueBlendMode)
*/
public class HueBlendMode: Filter {

    let name = "CIHueBlendMode"

    public init(inputImage: CIImage? = nil, inputBackgroundImage: CIImage? = nil) {
        super.init(name: "CIHueBlendMode")

        if let inputImage = inputImage {
            self.inputImage = inputImage
        }
        if let inputBackgroundImage = inputBackgroundImage {
            self.inputBackgroundImage = inputBackgroundImage
        }
    }


    /// The image to use as an input image. For filters that also use a background image, this is the foreground image.
    public var inputImage: CIImage? {
        get {
            return valueForKey("inputImage") as? CIImage
        }
        set {
            setValue(newValue, forKey: "inputImage")
        }
    }

    /// The image to use as a background image.
    public var inputBackgroundImage: CIImage? {
        get {
            return valueForKey("inputBackgroundImage") as? CIImage
        }
        set {
            setValue(newValue, forKey: "inputBackgroundImage")
        }
    }
}

/**
Produces a kaleidoscopic image from a source image by applying 12-way symmetry.

[More Information](http: //developer.apple.com/cgi-bin/apple_ref.cgi?apple_ref=//apple_ref/doc/filter/ci/CIKaleidoscope)
*/
public class Kaleidoscope: Filter {

    let name = "CIKaleidoscope"

    public init(inputImage: CIImage? = nil, inputCount: CGFloat? = nil, inputCenter: CIVector? = nil, inputAngle: CGFloat? = nil) {
        super.init(name: "CIKaleidoscope")

        if let inputImage = inputImage {
            self.inputImage = inputImage
        }
        if let inputCount = inputCount {
            self.inputCount = inputCount
        }
        if let inputCenter = inputCenter {
            self.inputCenter = inputCenter
        }
        if let inputAngle = inputAngle {
            self.inputAngle = inputAngle
        }
    }


    /// The image to use as an input image. For filters that also use a background image, this is the foreground image.
    public var inputImage: CIImage? {
        get {
            return valueForKey("inputImage") as? CIImage
        }
        set {
            setValue(newValue, forKey: "inputImage")
        }
    }

    /// The number of reflections in the pattern.
    public var inputCount: CGFloat? {
        get {
            return valueForKey("inputCount") as? CGFloat
        }
        set {
            setValue(newValue, forKey: "inputCount")
        }
    }

    /// The x and y position to use as the center of the effect
    public var inputCenter: CIVector? {
        get {
            return valueForKey("inputCenter") as? CIVector
        }
        set {
            setValue(newValue, forKey: "inputCenter")
        }
    }

    /// The angle of reflection.
    public var inputAngle: CGFloat? {
        get {
            return valueForKey("inputAngle") as? CGFloat
        }
        set {
            setValue(newValue, forKey: "inputAngle")
        }
    }
}

/**
Produces a high-quality, scaled version of a source image. You typically use this filter to scale down an image.

[More Information](http: //developer.apple.com/cgi-bin/apple_ref.cgi?apple_ref=//apple_ref/doc/filter/ci/CILanczosScaleTransform)
*/
public class LanczosScaleTransform: Filter {

    let name = "CILanczosScaleTransform"

    public init(inputImage: CIImage? = nil, inputScale: CGFloat? = nil, inputAspectRatio: CGFloat? = nil) {
        super.init(name: "CILanczosScaleTransform")

        if let inputImage = inputImage {
            self.inputImage = inputImage
        }
        if let inputScale = inputScale {
            self.inputScale = inputScale
        }
        if let inputAspectRatio = inputAspectRatio {
            self.inputAspectRatio = inputAspectRatio
        }
    }


    /// The image to use as an input image. For filters that also use a background image, this is the foreground image.
    public var inputImage: CIImage? {
        get {
            return valueForKey("inputImage") as? CIImage
        }
        set {
            setValue(newValue, forKey: "inputImage")
        }
    }

    /// The scaling factor to use on the image. Values less than 1.0 scale down the images. Values greater than 1.0 scale up the image.
    public var inputScale: CGFloat? {
        get {
            return valueForKey("inputScale") as? CGFloat
        }
        set {
            setValue(newValue, forKey: "inputScale")
        }
    }

    /// The aspect ratio of the image.
    public var inputAspectRatio: CGFloat? {
        get {
            return valueForKey("inputAspectRatio") as? CGFloat
        }
        set {
            setValue(newValue, forKey: "inputAspectRatio")
        }
    }
}

/**
Simulates a halo that is generated by the diffraction associated with the spread of a lens. This filter is typically applied to another image to simulate lens flares and similar effects.

[More Information](http: //developer.apple.com/cgi-bin/apple_ref.cgi?apple_ref=//apple_ref/doc/filter/ci/CILenticularHaloGenerator)
*/
public class LenticularHaloGenerator: Filter {

    let name = "CILenticularHaloGenerator"

    public init(inputCenter: CIVector? = nil, inputColor: CIColor? = nil, inputHaloRadius: CGFloat? = nil, inputHaloWidth: CGFloat? = nil, inputHaloOverlap: CGFloat? = nil, inputStriationStrength: CGFloat? = nil, inputStriationContrast: CGFloat? = nil, inputTime: CGFloat? = nil) {
        super.init(name: "CILenticularHaloGenerator")

        if let inputCenter = inputCenter {
            self.inputCenter = inputCenter
        }
        if let inputColor = inputColor {
            self.inputColor = inputColor
        }
        if let inputHaloRadius = inputHaloRadius {
            self.inputHaloRadius = inputHaloRadius
        }
        if let inputHaloWidth = inputHaloWidth {
            self.inputHaloWidth = inputHaloWidth
        }
        if let inputHaloOverlap = inputHaloOverlap {
            self.inputHaloOverlap = inputHaloOverlap
        }
        if let inputStriationStrength = inputStriationStrength {
            self.inputStriationStrength = inputStriationStrength
        }
        if let inputStriationContrast = inputStriationContrast {
            self.inputStriationContrast = inputStriationContrast
        }
        if let inputTime = inputTime {
            self.inputTime = inputTime
        }
    }


    /// The x and y position to use as the center of the halo.
    public var inputCenter: CIVector? {
        get {
            return valueForKey("inputCenter") as? CIVector
        }
        set {
            setValue(newValue, forKey: "inputCenter")
        }
    }

    /// A color.
    public var inputColor: CIColor? {
        get {
            return valueForKey("inputColor") as? CIColor
        }
        set {
            setValue(newValue, forKey: "inputColor")
        }
    }

    /// The radius of the halo.
    public var inputHaloRadius: CGFloat? {
        get {
            return valueForKey("inputHaloRadius") as? CGFloat
        }
        set {
            setValue(newValue, forKey: "inputHaloRadius")
        }
    }

    /// The width if the halo, from its inner radius to its outer radius.
    public var inputHaloWidth: CGFloat? {
        get {
            return valueForKey("inputHaloWidth") as? CGFloat
        }
        set {
            setValue(newValue, forKey: "inputHaloWidth")
        }
    }

    public var inputHaloOverlap: CGFloat? {
        get {
            return valueForKey("inputHaloOverlap") as? CGFloat
        }
        set {
            setValue(newValue, forKey: "inputHaloOverlap")
        }
    }

    /// The intensity of the halo colors. Larger values are more intense.
    public var inputStriationStrength: CGFloat? {
        get {
            return valueForKey("inputStriationStrength") as? CGFloat
        }
        set {
            setValue(newValue, forKey: "inputStriationStrength")
        }
    }

    /// The contrast of the halo colors. Larger values are higher contrast.
    public var inputStriationContrast: CGFloat? {
        get {
            return valueForKey("inputStriationContrast") as? CGFloat
        }
        set {
            setValue(newValue, forKey: "inputStriationContrast")
        }
    }

    /// The duration of the effect.
    public var inputTime: CGFloat? {
        get {
            return valueForKey("inputTime") as? CGFloat
        }
        set {
            setValue(newValue, forKey: "inputTime")
        }
    }
}

/**
Creates composite image samples by choosing the lighter samples (either from the source image or the background). The result is that the background image samples are replaced by any source image samples that are lighter. Otherwise, the background image samples are left unchanged.

[More Information](http: //developer.apple.com/cgi-bin/apple_ref.cgi?apple_ref=//apple_ref/doc/filter/ci/CILightenBlendMode)
*/
public class LightenBlendMode: Filter {

    let name = "CILightenBlendMode"

    public init(inputImage: CIImage? = nil, inputBackgroundImage: CIImage? = nil) {
        super.init(name: "CILightenBlendMode")

        if let inputImage = inputImage {
            self.inputImage = inputImage
        }
        if let inputBackgroundImage = inputBackgroundImage {
            self.inputBackgroundImage = inputBackgroundImage
        }
    }


    /// The image to use as an input image. For filters that also use a background image, this is the foreground image.
    public var inputImage: CIImage? {
        get {
            return valueForKey("inputImage") as? CIImage
        }
        set {
            setValue(newValue, forKey: "inputImage")
        }
    }

    /// The image to use as a background image.
    public var inputBackgroundImage: CIImage? {
        get {
            return valueForKey("inputBackgroundImage") as? CIImage
        }
        set {
            setValue(newValue, forKey: "inputBackgroundImage")
        }
    }
}

/**
Light tunnel distortion.

[More Information](http: //developer.apple.com/cgi-bin/apple_ref.cgi?apple_ref=//apple_ref/doc/filter/ci/CILightTunnel)
*/
public class LightTunnel: Filter {

    let name = "CILightTunnel"

    public init(inputImage: CIImage? = nil, inputCenter: CIVector? = nil, inputRotation: CGFloat? = nil, inputRadius: CGFloat? = nil) {
        super.init(name: "CILightTunnel")

        if let inputImage = inputImage {
            self.inputImage = inputImage
        }
        if let inputCenter = inputCenter {
            self.inputCenter = inputCenter
        }
        if let inputRotation = inputRotation {
            self.inputRotation = inputRotation
        }
        if let inputRadius = inputRadius {
            self.inputRadius = inputRadius
        }
    }


    /// The image to process.
    public var inputImage: CIImage? {
        get {
            return valueForKey("inputImage") as? CIImage
        }
        set {
            setValue(newValue, forKey: "inputImage")
        }
    }

    /// Center of the light tunnel.
    public var inputCenter: CIVector? {
        get {
            return valueForKey("inputCenter") as? CIVector
        }
        set {
            setValue(newValue, forKey: "inputCenter")
        }
    }

    /// Rotation angle of the light tunnel.
    public var inputRotation: CGFloat? {
        get {
            return valueForKey("inputRotation") as? CGFloat
        }
        set {
            setValue(newValue, forKey: "inputRotation")
        }
    }

    /// center radius of the light tunnel.
    public var inputRadius: CGFloat? {
        get {
            return valueForKey("inputRadius") as? CGFloat
        }
        set {
            setValue(newValue, forKey: "inputRadius")
        }
    }
}

/**
Linear Burn Blend Mode

[More Information](http: //developer.apple.com/cgi-bin/apple_ref.cgi?apple_ref=//apple_ref/doc/filter/ci/CILinearBurnBlendMode)
*/
public class LinearBurnBlendMode: Filter {

    let name = "CILinearBurnBlendMode"

    public init(inputImage: CIImage? = nil, inputBackgroundImage: CIImage? = nil) {
        super.init(name: "CILinearBurnBlendMode")

        if let inputImage = inputImage {
            self.inputImage = inputImage
        }
        if let inputBackgroundImage = inputBackgroundImage {
            self.inputBackgroundImage = inputBackgroundImage
        }
    }


    /// The image to use as an input image. For filters that also use a background image, this is the foreground image.
    public var inputImage: CIImage? {
        get {
            return valueForKey("inputImage") as? CIImage
        }
        set {
            setValue(newValue, forKey: "inputImage")
        }
    }

    /// The image to use as a background image.
    public var inputBackgroundImage: CIImage? {
        get {
            return valueForKey("inputBackgroundImage") as? CIImage
        }
        set {
            setValue(newValue, forKey: "inputBackgroundImage")
        }
    }
}

/**
Linear Dodge Blend Mode

[More Information](http: //developer.apple.com/cgi-bin/apple_ref.cgi?apple_ref=//apple_ref/doc/filter/ci/CILinearDodgeBlendMode)
*/
public class LinearDodgeBlendMode: Filter {

    let name = "CILinearDodgeBlendMode"

    public init(inputImage: CIImage? = nil, inputBackgroundImage: CIImage? = nil) {
        super.init(name: "CILinearDodgeBlendMode")

        if let inputImage = inputImage {
            self.inputImage = inputImage
        }
        if let inputBackgroundImage = inputBackgroundImage {
            self.inputBackgroundImage = inputBackgroundImage
        }
    }


    /// The image to use as an input image. For filters that also use a background image, this is the foreground image.
    public var inputImage: CIImage? {
        get {
            return valueForKey("inputImage") as? CIImage
        }
        set {
            setValue(newValue, forKey: "inputImage")
        }
    }

    /// The image to use as a background image.
    public var inputBackgroundImage: CIImage? {
        get {
            return valueForKey("inputBackgroundImage") as? CIImage
        }
        set {
            setValue(newValue, forKey: "inputBackgroundImage")
        }
    }
}

/**
Generates a gradient that varies along a linear axis between two defined endpoints.

[More Information](http: //developer.apple.com/cgi-bin/apple_ref.cgi?apple_ref=//apple_ref/doc/filter/ci/CILinearGradient)
*/
public class LinearGradient: Filter {

    let name = "CILinearGradient"

    public init(inputPoint0: CIVector? = nil, inputPoint1: CIVector? = nil, inputColor0: CIColor? = nil, inputColor1: CIColor? = nil) {
        super.init(name: "CILinearGradient")

        if let inputPoint0 = inputPoint0 {
            self.inputPoint0 = inputPoint0
        }
        if let inputPoint1 = inputPoint1 {
            self.inputPoint1 = inputPoint1
        }
        if let inputColor0 = inputColor0 {
            self.inputColor0 = inputColor0
        }
        if let inputColor1 = inputColor1 {
            self.inputColor1 = inputColor1
        }
    }


    /// The starting position of the gradient -- where the first color begins.
    public var inputPoint0: CIVector? {
        get {
            return valueForKey("inputPoint0") as? CIVector
        }
        set {
            setValue(newValue, forKey: "inputPoint0")
        }
    }

    /// The ending position of the gradient -- where the sedon color begins.
    public var inputPoint1: CIVector? {
        get {
            return valueForKey("inputPoint1") as? CIVector
        }
        set {
            setValue(newValue, forKey: "inputPoint1")
        }
    }

    /// The first color to use in the gradient.
    public var inputColor0: CIColor? {
        get {
            return valueForKey("inputColor0") as? CIColor
        }
        set {
            setValue(newValue, forKey: "inputColor0")
        }
    }

    /// The second color to use in the gradient.
    public var inputColor1: CIColor? {
        get {
            return valueForKey("inputColor1") as? CIColor
        }
        set {
            setValue(newValue, forKey: "inputColor1")
        }
    }
}

/**
Converts an image in linear space to sRGB space.

[More Information](http: //developer.apple.com/cgi-bin/apple_ref.cgi?apple_ref=//apple_ref/doc/filter/ci/CILinearToSRGBToneCurve)
*/
public class LinearToSRGBToneCurve: Filter {

    let name = "CILinearToSRGBToneCurve"

    public init(inputImage: CIImage? = nil) {
        super.init(name: "CILinearToSRGBToneCurve")

        if let inputImage = inputImage {
            self.inputImage = inputImage
        }
    }


    /// The image to use as an input image. For filters that also use a background image, this is the foreground image.
    public var inputImage: CIImage? {
        get {
            return valueForKey("inputImage") as? CIImage
        }
        set {
            setValue(newValue, forKey: "inputImage")
        }
    }
}

/**
Creates a sketch that outlines the edges of an image in black, leaving the non-outlined portions of the image transparent. The result has alpha and is rendered in black, so it won't look like much until you render it over another image using source over compositing.

[More Information](http: //developer.apple.com/cgi-bin/apple_ref.cgi?apple_ref=//apple_ref/doc/filter/ci/CILineOverlay)
*/
public class LineOverlay: Filter {

    let name = "CILineOverlay"

    public init(inputImage: CIImage? = nil, inputNRNoiseLevel: CGFloat? = nil, inputNRSharpness: CGFloat? = nil, inputEdgeIntensity: CGFloat? = nil, inputThreshold: CGFloat? = nil, inputContrast: CGFloat? = nil) {
        super.init(name: "CILineOverlay")

        if let inputImage = inputImage {
            self.inputImage = inputImage
        }
        if let inputNRNoiseLevel = inputNRNoiseLevel {
            self.inputNRNoiseLevel = inputNRNoiseLevel
        }
        if let inputNRSharpness = inputNRSharpness {
            self.inputNRSharpness = inputNRSharpness
        }
        if let inputEdgeIntensity = inputEdgeIntensity {
            self.inputEdgeIntensity = inputEdgeIntensity
        }
        if let inputThreshold = inputThreshold {
            self.inputThreshold = inputThreshold
        }
        if let inputContrast = inputContrast {
            self.inputContrast = inputContrast
        }
    }


    /// The image to use as an input image. For filters that also use a background image, this is the foreground image.
    public var inputImage: CIImage? {
        get {
            return valueForKey("inputImage") as? CIImage
        }
        set {
            setValue(newValue, forKey: "inputImage")
        }
    }

    /// The noise level of the image (used with camera data) that gets removed before tracing the edges of the image. Increasing the noise level helps to clean up the traced edges of the image.
    public var inputNRNoiseLevel: CGFloat? {
        get {
            return valueForKey("inputNRNoiseLevel") as? CGFloat
        }
        set {
            setValue(newValue, forKey: "inputNRNoiseLevel")
        }
    }

    /// The amount of sharpening done when removing noise in the image before tracing the edges of the image. This improves the edge acquisition.
    public var inputNRSharpness: CGFloat? {
        get {
            return valueForKey("inputNRSharpness") as? CGFloat
        }
        set {
            setValue(newValue, forKey: "inputNRSharpness")
        }
    }

    /// The accentuation factor of the Sobel gradient information when tracing the edges of the image. Higher values find more edges, although typically a low value (such as 1.0) is used.
    public var inputEdgeIntensity: CGFloat? {
        get {
            return valueForKey("inputEdgeIntensity") as? CGFloat
        }
        set {
            setValue(newValue, forKey: "inputEdgeIntensity")
        }
    }

    /// This value determines edge visibility. Larger values thin out the edges.
    public var inputThreshold: CGFloat? {
        get {
            return valueForKey("inputThreshold") as? CGFloat
        }
        set {
            setValue(newValue, forKey: "inputThreshold")
        }
    }

    /// The amount of anti-aliasing to use on the edges produced by this filter. Higher values produce higher contrast edges (they are less anti-aliased).
    public var inputContrast: CGFloat? {
        get {
            return valueForKey("inputContrast") as? CGFloat
        }
        set {
            setValue(newValue, forKey: "inputContrast")
        }
    }
}

/**
Simulates the line pattern of a halftone screen.

[More Information](http: //developer.apple.com/cgi-bin/apple_ref.cgi?apple_ref=//apple_ref/doc/filter/ci/CILineScreen)
*/
public class LineScreen: Filter {

    let name = "CILineScreen"

    public init(inputImage: CIImage? = nil, inputCenter: CIVector? = nil, inputAngle: CGFloat? = nil, inputWidth: CGFloat? = nil, inputSharpness: CGFloat? = nil) {
        super.init(name: "CILineScreen")

        if let inputImage = inputImage {
            self.inputImage = inputImage
        }
        if let inputCenter = inputCenter {
            self.inputCenter = inputCenter
        }
        if let inputAngle = inputAngle {
            self.inputAngle = inputAngle
        }
        if let inputWidth = inputWidth {
            self.inputWidth = inputWidth
        }
        if let inputSharpness = inputSharpness {
            self.inputSharpness = inputSharpness
        }
    }


    /// The image to use as an input image. For filters that also use a background image, this is the foreground image.
    public var inputImage: CIImage? {
        get {
            return valueForKey("inputImage") as? CIImage
        }
        set {
            setValue(newValue, forKey: "inputImage")
        }
    }

    /// The x and y position to use as the center of the line screen pattern
    public var inputCenter: CIVector? {
        get {
            return valueForKey("inputCenter") as? CIVector
        }
        set {
            setValue(newValue, forKey: "inputCenter")
        }
    }

    /// The angle of the pattern.
    public var inputAngle: CGFloat? {
        get {
            return valueForKey("inputAngle") as? CGFloat
        }
        set {
            setValue(newValue, forKey: "inputAngle")
        }
    }

    /// The distance between lines in the pattern.
    public var inputWidth: CGFloat? {
        get {
            return valueForKey("inputWidth") as? CGFloat
        }
        set {
            setValue(newValue, forKey: "inputWidth")
        }
    }

    /// The sharpness of the pattern. The larger the value, the sharper the pattern.
    public var inputSharpness: CGFloat? {
        get {
            return valueForKey("inputSharpness") as? CGFloat
        }
        set {
            setValue(newValue, forKey: "inputSharpness")
        }
    }
}

/**
Uses the hue and saturation of the background with the luminance of the source image. This mode creates an effect that is inverse to the effect created by the CIColorBlendMode filter.

[More Information](http: //developer.apple.com/cgi-bin/apple_ref.cgi?apple_ref=//apple_ref/doc/filter/ci/CILuminosityBlendMode)
*/
public class LuminosityBlendMode: Filter {

    let name = "CILuminosityBlendMode"

    public init(inputImage: CIImage? = nil, inputBackgroundImage: CIImage? = nil) {
        super.init(name: "CILuminosityBlendMode")

        if let inputImage = inputImage {
            self.inputImage = inputImage
        }
        if let inputBackgroundImage = inputBackgroundImage {
            self.inputBackgroundImage = inputBackgroundImage
        }
    }


    /// The image to use as an input image. For filters that also use a background image, this is the foreground image.
    public var inputImage: CIImage? {
        get {
            return valueForKey("inputImage") as? CIImage
        }
        set {
            setValue(newValue, forKey: "inputImage")
        }
    }

    /// The image to use as a background image.
    public var inputBackgroundImage: CIImage? {
        get {
            return valueForKey("inputBackgroundImage") as? CIImage
        }
        set {
            setValue(newValue, forKey: "inputBackgroundImage")
        }
    }
}

/**
Converts a grayscale image to a white image that is masked by alpha. The white values from the source image produce the inside of the mask; the black values become completely transparent.

[More Information](http: //developer.apple.com/cgi-bin/apple_ref.cgi?apple_ref=//apple_ref/doc/filter/ci/CIMaskToAlpha)
*/
public class MaskToAlpha: Filter {

    let name = "CIMaskToAlpha"

    public init(inputImage: CIImage? = nil) {
        super.init(name: "CIMaskToAlpha")

        if let inputImage = inputImage {
            self.inputImage = inputImage
        }
    }


    /// The image to use as an input image. For filters that also use a background image, this is the foreground image.
    public var inputImage: CIImage? {
        get {
            return valueForKey("inputImage") as? CIImage
        }
        set {
            setValue(newValue, forKey: "inputImage")
        }
    }
}

/**
Converts an image to grayscale using the maximum of the three color components.

[More Information](http: //developer.apple.com/cgi-bin/apple_ref.cgi?apple_ref=//apple_ref/doc/filter/ci/CIMaximumComponent)
*/
public class MaximumComponent: Filter {

    let name = "CIMaximumComponent"

    public init(inputImage: CIImage? = nil) {
        super.init(name: "CIMaximumComponent")

        if let inputImage = inputImage {
            self.inputImage = inputImage
        }
    }


    /// The image to process.
    public var inputImage: CIImage? {
        get {
            return valueForKey("inputImage") as? CIImage
        }
        set {
            setValue(newValue, forKey: "inputImage")
        }
    }
}

/**
Computes the maximum value, by color component, of two input images and creates an output image using the maximum values. This is similar to dodging.

[More Information](http: //developer.apple.com/cgi-bin/apple_ref.cgi?apple_ref=//apple_ref/doc/filter/ci/CIMaximumCompositing)
*/
public class MaximumCompositing: Filter {

    let name = "CIMaximumCompositing"

    public init(inputImage: CIImage? = nil, inputBackgroundImage: CIImage? = nil) {
        super.init(name: "CIMaximumCompositing")

        if let inputImage = inputImage {
            self.inputImage = inputImage
        }
        if let inputBackgroundImage = inputBackgroundImage {
            self.inputBackgroundImage = inputBackgroundImage
        }
    }


    /// The image to use as an input image. For filters that also use a background image, this is the foreground image.
    public var inputImage: CIImage? {
        get {
            return valueForKey("inputImage") as? CIImage
        }
        set {
            setValue(newValue, forKey: "inputImage")
        }
    }

    /// The image to use as a background image.
    public var inputBackgroundImage: CIImage? {
        get {
            return valueForKey("inputBackgroundImage") as? CIImage
        }
        set {
            setValue(newValue, forKey: "inputBackgroundImage")
        }
    }
}

/**
Computes the median value for a group of neighboring pixels and replaces each pixel value with the median. The effect is to reduce noise.

[More Information](http: //developer.apple.com/cgi-bin/apple_ref.cgi?apple_ref=//apple_ref/doc/filter/ci/CIMedianFilter)
*/
public class MedianFilter: Filter {

    let name = "CIMedianFilter"

    public init(inputImage: CIImage? = nil) {
        super.init(name: "CIMedianFilter")

        if let inputImage = inputImage {
            self.inputImage = inputImage
        }
    }


    /// The image to use as an input image. For filters that also use a background image, this is the foreground image.
    public var inputImage: CIImage? {
        get {
            return valueForKey("inputImage") as? CIImage
        }
        set {
            setValue(newValue, forKey: "inputImage")
        }
    }
}

/**
Converts an image to grayscale using the minimum of the three color components.

[More Information](http: //developer.apple.com/cgi-bin/apple_ref.cgi?apple_ref=//apple_ref/doc/filter/ci/CIMinimumComponent)
*/
public class MinimumComponent: Filter {

    let name = "CIMinimumComponent"

    public init(inputImage: CIImage? = nil) {
        super.init(name: "CIMinimumComponent")

        if let inputImage = inputImage {
            self.inputImage = inputImage
        }
    }


    /// The image to process.
    public var inputImage: CIImage? {
        get {
            return valueForKey("inputImage") as? CIImage
        }
        set {
            setValue(newValue, forKey: "inputImage")
        }
    }
}

/**
Computes the minimum value, by color component, of two input images and creates an output image using the minimum values. This is similar to burning.

[More Information](http: //developer.apple.com/cgi-bin/apple_ref.cgi?apple_ref=//apple_ref/doc/filter/ci/CIMinimumCompositing)
*/
public class MinimumCompositing: Filter {

    let name = "CIMinimumCompositing"

    public init(inputImage: CIImage? = nil, inputBackgroundImage: CIImage? = nil) {
        super.init(name: "CIMinimumCompositing")

        if let inputImage = inputImage {
            self.inputImage = inputImage
        }
        if let inputBackgroundImage = inputBackgroundImage {
            self.inputBackgroundImage = inputBackgroundImage
        }
    }


    /// The image to use as an input image. For filters that also use a background image, this is the foreground image.
    public var inputImage: CIImage? {
        get {
            return valueForKey("inputImage") as? CIImage
        }
        set {
            setValue(newValue, forKey: "inputImage")
        }
    }

    /// The image to use as a background image.
    public var inputBackgroundImage: CIImage? {
        get {
            return valueForKey("inputBackgroundImage") as? CIImage
        }
        set {
            setValue(newValue, forKey: "inputBackgroundImage")
        }
    }
}

/**
Transitions from one image to another by revealing the target image through irregularly shaped holes.

[More Information](http: //developer.apple.com/cgi-bin/apple_ref.cgi?apple_ref=//apple_ref/doc/filter/ci/CIModTransition)
*/
public class ModTransition: Filter {

    let name = "CIModTransition"

    public init(inputImage: CIImage? = nil, inputTargetImage: CIImage? = nil, inputCenter: CIVector? = nil, inputTime: CGFloat? = nil, inputAngle: CGFloat? = nil, inputRadius: CGFloat? = nil, inputCompression: CGFloat? = nil) {
        super.init(name: "CIModTransition")

        if let inputImage = inputImage {
            self.inputImage = inputImage
        }
        if let inputTargetImage = inputTargetImage {
            self.inputTargetImage = inputTargetImage
        }
        if let inputCenter = inputCenter {
            self.inputCenter = inputCenter
        }
        if let inputTime = inputTime {
            self.inputTime = inputTime
        }
        if let inputAngle = inputAngle {
            self.inputAngle = inputAngle
        }
        if let inputRadius = inputRadius {
            self.inputRadius = inputRadius
        }
        if let inputCompression = inputCompression {
            self.inputCompression = inputCompression
        }
    }


    /// The image to use as an input image. For filters that also use a background image, this is the foreground image.
    public var inputImage: CIImage? {
        get {
            return valueForKey("inputImage") as? CIImage
        }
        set {
            setValue(newValue, forKey: "inputImage")
        }
    }

    /// The target image for a transition.
    public var inputTargetImage: CIImage? {
        get {
            return valueForKey("inputTargetImage") as? CIImage
        }
        set {
            setValue(newValue, forKey: "inputTargetImage")
        }
    }

    /// The x and y position to use as the center of the effect
    public var inputCenter: CIVector? {
        get {
            return valueForKey("inputCenter") as? CIVector
        }
        set {
            setValue(newValue, forKey: "inputCenter")
        }
    }

    /// The parametric time of the transition. This value drives the transition from start (at time 0) to end (at time 1).
    public var inputTime: CGFloat? {
        get {
            return valueForKey("inputTime") as? CGFloat
        }
        set {
            setValue(newValue, forKey: "inputTime")
        }
    }

    /// The angle of the mod hole pattern.
    public var inputAngle: CGFloat? {
        get {
            return valueForKey("inputAngle") as? CGFloat
        }
        set {
            setValue(newValue, forKey: "inputAngle")
        }
    }

    /// The radius of the undistorted holes in the pattern.
    public var inputRadius: CGFloat? {
        get {
            return valueForKey("inputRadius") as? CGFloat
        }
        set {
            setValue(newValue, forKey: "inputRadius")
        }
    }

    /// The amount of stretching applied to the mod hole pattern. Holes in the center are not distorted as much as those at the edge of the image.
    public var inputCompression: CGFloat? {
        get {
            return valueForKey("inputCompression") as? CGFloat
        }
        set {
            setValue(newValue, forKey: "inputCompression")
        }
    }
}

/**
Blurs an image to simulate the effect of using a camera that moves a specified angle and distance while capturing the image.

[More Information](http: //developer.apple.com/cgi-bin/apple_ref.cgi?apple_ref=//apple_ref/doc/filter/ci/CIMotionBlur)
*/
public class MotionBlur: Filter {

    let name = "CIMotionBlur"

    public init(inputImage: CIImage? = nil, inputRadius: CGFloat? = nil, inputAngle: CGFloat? = nil) {
        super.init(name: "CIMotionBlur")

        if let inputImage = inputImage {
            self.inputImage = inputImage
        }
        if let inputRadius = inputRadius {
            self.inputRadius = inputRadius
        }
        if let inputAngle = inputAngle {
            self.inputAngle = inputAngle
        }
    }


    /// The image to use as an input image. For filters that also use a background image, this is the foreground image.
    public var inputImage: CIImage? {
        get {
            return valueForKey("inputImage") as? CIImage
        }
        set {
            setValue(newValue, forKey: "inputImage")
        }
    }

    /// The radius determines how many pixels are used to create the blur. The larger the radius, the blurrier the result.
    public var inputRadius: CGFloat? {
        get {
            return valueForKey("inputRadius") as? CGFloat
        }
        set {
            setValue(newValue, forKey: "inputRadius")
        }
    }

    /// The angle of the motion determines which direction the blur smears.
    public var inputAngle: CGFloat? {
        get {
            return valueForKey("inputAngle") as? CGFloat
        }
        set {
            setValue(newValue, forKey: "inputAngle")
        }
    }
}

/**
Multiplies the source image samples with the background image samples. This results in colors that are at least as dark as either of the two contributing sample colors.

[More Information](http: //developer.apple.com/cgi-bin/apple_ref.cgi?apple_ref=//apple_ref/doc/filter/ci/CIMultiplyBlendMode)
*/
public class MultiplyBlendMode: Filter {

    let name = "CIMultiplyBlendMode"

    public init(inputImage: CIImage? = nil, inputBackgroundImage: CIImage? = nil) {
        super.init(name: "CIMultiplyBlendMode")

        if let inputImage = inputImage {
            self.inputImage = inputImage
        }
        if let inputBackgroundImage = inputBackgroundImage {
            self.inputBackgroundImage = inputBackgroundImage
        }
    }


    /// The image to use as an input image. For filters that also use a background image, this is the foreground image.
    public var inputImage: CIImage? {
        get {
            return valueForKey("inputImage") as? CIImage
        }
        set {
            setValue(newValue, forKey: "inputImage")
        }
    }

    /// The image to use as a background image.
    public var inputBackgroundImage: CIImage? {
        get {
            return valueForKey("inputBackgroundImage") as? CIImage
        }
        set {
            setValue(newValue, forKey: "inputBackgroundImage")
        }
    }
}

/**
Multiplies the color component of two input images and creates an output image using the multiplied values. This filter is typically used to add a spotlight or similar lighting effect to an image.

[More Information](http: //developer.apple.com/cgi-bin/apple_ref.cgi?apple_ref=//apple_ref/doc/filter/ci/CIMultiplyCompositing)
*/
public class MultiplyCompositing: Filter {

    let name = "CIMultiplyCompositing"

    public init(inputImage: CIImage? = nil, inputBackgroundImage: CIImage? = nil) {
        super.init(name: "CIMultiplyCompositing")

        if let inputImage = inputImage {
            self.inputImage = inputImage
        }
        if let inputBackgroundImage = inputBackgroundImage {
            self.inputBackgroundImage = inputBackgroundImage
        }
    }


    /// The image to use as an input image. For filters that also use a background image, this is the foreground image.
    public var inputImage: CIImage? {
        get {
            return valueForKey("inputImage") as? CIImage
        }
        set {
            setValue(newValue, forKey: "inputImage")
        }
    }

    /// The image to use as a background image.
    public var inputBackgroundImage: CIImage? {
        get {
            return valueForKey("inputBackgroundImage") as? CIImage
        }
        set {
            setValue(newValue, forKey: "inputBackgroundImage")
        }
    }
}

/**
Reduces noise using a threshold value to define what is considered noise. Small changes in luminance below that value are considered noise and get a noise reduction treatment, which is a local blur. Changes above the threshold value are considered edges, so they are sharpened.

[More Information](http: //developer.apple.com/cgi-bin/apple_ref.cgi?apple_ref=//apple_ref/doc/filter/ci/CINoiseReduction)
*/
public class NoiseReduction: Filter {

    let name = "CINoiseReduction"

    public init(inputImage: CIImage? = nil, inputNoiseLevel: CGFloat? = nil, inputSharpness: CGFloat? = nil) {
        super.init(name: "CINoiseReduction")

        if let inputImage = inputImage {
            self.inputImage = inputImage
        }
        if let inputNoiseLevel = inputNoiseLevel {
            self.inputNoiseLevel = inputNoiseLevel
        }
        if let inputSharpness = inputSharpness {
            self.inputSharpness = inputSharpness
        }
    }


    /// The image to use as an input image. For filters that also use a background image, this is the foreground image.
    public var inputImage: CIImage? {
        get {
            return valueForKey("inputImage") as? CIImage
        }
        set {
            setValue(newValue, forKey: "inputImage")
        }
    }

    /// The amount of noise reduction. The larger the value, the more noise reduction.
    public var inputNoiseLevel: CGFloat? {
        get {
            return valueForKey("inputNoiseLevel") as? CGFloat
        }
        set {
            setValue(newValue, forKey: "inputNoiseLevel")
        }
    }

    /// The sharpness of the final image. The larger the value, the sharper the result.
    public var inputSharpness: CGFloat? {
        get {
            return valueForKey("inputSharpness") as? CGFloat
        }
        set {
            setValue(newValue, forKey: "inputSharpness")
        }
    }
}

/**
Segments an image, applying any specified scaling and rotation, and then assembles the image again to give an op art appearance.

[More Information](http: //developer.apple.com/cgi-bin/apple_ref.cgi?apple_ref=//apple_ref/doc/filter/ci/CIOpTile)
*/
public class OpTile: Filter {

    let name = "CIOpTile"

    public init(inputImage: CIImage? = nil, inputCenter: CIVector? = nil, inputScale: CGFloat? = nil, inputAngle: CGFloat? = nil, inputWidth: CGFloat? = nil) {
        super.init(name: "CIOpTile")

        if let inputImage = inputImage {
            self.inputImage = inputImage
        }
        if let inputCenter = inputCenter {
            self.inputCenter = inputCenter
        }
        if let inputScale = inputScale {
            self.inputScale = inputScale
        }
        if let inputAngle = inputAngle {
            self.inputAngle = inputAngle
        }
        if let inputWidth = inputWidth {
            self.inputWidth = inputWidth
        }
    }


    /// The image to use as an input image. For filters that also use a background image, this is the foreground image.
    public var inputImage: CIImage? {
        get {
            return valueForKey("inputImage") as? CIImage
        }
        set {
            setValue(newValue, forKey: "inputImage")
        }
    }

    /// The x and y position to use as the center of the effect
    public var inputCenter: CIVector? {
        get {
            return valueForKey("inputCenter") as? CIVector
        }
        set {
            setValue(newValue, forKey: "inputCenter")
        }
    }

    /// The scale determines the number of tiles in the effect.
    public var inputScale: CGFloat? {
        get {
            return valueForKey("inputScale") as? CGFloat
        }
        set {
            setValue(newValue, forKey: "inputScale")
        }
    }

    /// The angle of a tile.
    public var inputAngle: CGFloat? {
        get {
            return valueForKey("inputAngle") as? CGFloat
        }
        set {
            setValue(newValue, forKey: "inputAngle")
        }
    }

    /// The width of a tile.
    public var inputWidth: CGFloat? {
        get {
            return valueForKey("inputWidth") as? CGFloat
        }
        set {
            setValue(newValue, forKey: "inputWidth")
        }
    }
}

/**
Either multiplies or screens the source image samples with the background image samples, depending on the background color. The result is to overlay the existing image samples while preserving the highlights and shadows of the background. The background color mixes with the source image to reflect the lightness or darkness of the background.

[More Information](http: //developer.apple.com/cgi-bin/apple_ref.cgi?apple_ref=//apple_ref/doc/filter/ci/CIOverlayBlendMode)
*/
public class OverlayBlendMode: Filter {

    let name = "CIOverlayBlendMode"

    public init(inputImage: CIImage? = nil, inputBackgroundImage: CIImage? = nil) {
        super.init(name: "CIOverlayBlendMode")

        if let inputImage = inputImage {
            self.inputImage = inputImage
        }
        if let inputBackgroundImage = inputBackgroundImage {
            self.inputBackgroundImage = inputBackgroundImage
        }
    }


    /// The image to use as an input image. For filters that also use a background image, this is the foreground image.
    public var inputImage: CIImage? {
        get {
            return valueForKey("inputImage") as? CIImage
        }
        set {
            setValue(newValue, forKey: "inputImage")
        }
    }

    /// The image to use as a background image.
    public var inputBackgroundImage: CIImage? {
        get {
            return valueForKey("inputBackgroundImage") as? CIImage
        }
        set {
            setValue(newValue, forKey: "inputBackgroundImage")
        }
    }
}

/**
Transitions from one image to another by simulating a curling page, revealing the new image as the page curls.

[More Information](http: //developer.apple.com/cgi-bin/apple_ref.cgi?apple_ref=//apple_ref/doc/filter/ci/CIPageCurlTransition)
*/
public class PageCurlTransition: Filter {

    let name = "CIPageCurlTransition"

    public init(inputImage: CIImage? = nil, inputTargetImage: CIImage? = nil, inputBacksideImage: CIImage? = nil, inputShadingImage: CIImage? = nil, inputExtent: CIVector? = nil, inputTime: CGFloat? = nil, inputAngle: CGFloat? = nil, inputRadius: CGFloat? = nil) {
        super.init(name: "CIPageCurlTransition")

        if let inputImage = inputImage {
            self.inputImage = inputImage
        }
        if let inputTargetImage = inputTargetImage {
            self.inputTargetImage = inputTargetImage
        }
        if let inputBacksideImage = inputBacksideImage {
            self.inputBacksideImage = inputBacksideImage
        }
        if let inputShadingImage = inputShadingImage {
            self.inputShadingImage = inputShadingImage
        }
        if let inputExtent = inputExtent {
            self.inputExtent = inputExtent
        }
        if let inputTime = inputTime {
            self.inputTime = inputTime
        }
        if let inputAngle = inputAngle {
            self.inputAngle = inputAngle
        }
        if let inputRadius = inputRadius {
            self.inputRadius = inputRadius
        }
    }


    /// The image to use as an input image. For filters that also use a background image, this is the foreground image.
    public var inputImage: CIImage? {
        get {
            return valueForKey("inputImage") as? CIImage
        }
        set {
            setValue(newValue, forKey: "inputImage")
        }
    }

    /// The target image for a transition.
    public var inputTargetImage: CIImage? {
        get {
            return valueForKey("inputTargetImage") as? CIImage
        }
        set {
            setValue(newValue, forKey: "inputTargetImage")
        }
    }

    /// The image that appears on the back of the source image, as the page curls to reveal the target image.
    public var inputBacksideImage: CIImage? {
        get {
            return valueForKey("inputBacksideImage") as? CIImage
        }
        set {
            setValue(newValue, forKey: "inputBacksideImage")
        }
    }

    /// An image that looks like a shaded sphere enclosed in a square image.
    public var inputShadingImage: CIImage? {
        get {
            return valueForKey("inputShadingImage") as? CIImage
        }
        set {
            setValue(newValue, forKey: "inputShadingImage")
        }
    }

    /// The extent of the effect.
    public var inputExtent: CIVector? {
        get {
            return valueForKey("inputExtent") as? CIVector
        }
        set {
            setValue(newValue, forKey: "inputExtent")
        }
    }

    /// The parametric time of the transition. This value drives the transition from start (at time 0) to end (at time 1).
    public var inputTime: CGFloat? {
        get {
            return valueForKey("inputTime") as? CGFloat
        }
        set {
            setValue(newValue, forKey: "inputTime")
        }
    }

    /// The angle of the curling page.
    public var inputAngle: CGFloat? {
        get {
            return valueForKey("inputAngle") as? CGFloat
        }
        set {
            setValue(newValue, forKey: "inputAngle")
        }
    }

    /// The radius of the curl.
    public var inputRadius: CGFloat? {
        get {
            return valueForKey("inputRadius") as? CGFloat
        }
        set {
            setValue(newValue, forKey: "inputRadius")
        }
    }
}

/**
Transitions from one image to another by simulating a curling page, revealing the new image as the page curls.

[More Information](http: //developer.apple.com/cgi-bin/apple_ref.cgi?apple_ref=//apple_ref/doc/filter/ci/CIPageCurlWithShadowTransition)
*/
public class PageCurlWithShadowTransition: Filter {

    let name = "CIPageCurlWithShadowTransition"

    public init(inputImage: CIImage? = nil, inputTargetImage: CIImage? = nil, inputBacksideImage: CIImage? = nil, inputExtent: CIVector? = nil, inputTime: CGFloat? = nil, inputAngle: CGFloat? = nil, inputRadius: CGFloat? = nil, inputShadowSize: CGFloat? = nil, inputShadowAmount: CGFloat? = nil, inputShadowExtent: CIVector? = nil) {
        super.init(name: "CIPageCurlWithShadowTransition")

        if let inputImage = inputImage {
            self.inputImage = inputImage
        }
        if let inputTargetImage = inputTargetImage {
            self.inputTargetImage = inputTargetImage
        }
        if let inputBacksideImage = inputBacksideImage {
            self.inputBacksideImage = inputBacksideImage
        }
        if let inputExtent = inputExtent {
            self.inputExtent = inputExtent
        }
        if let inputTime = inputTime {
            self.inputTime = inputTime
        }
        if let inputAngle = inputAngle {
            self.inputAngle = inputAngle
        }
        if let inputRadius = inputRadius {
            self.inputRadius = inputRadius
        }
        if let inputShadowSize = inputShadowSize {
            self.inputShadowSize = inputShadowSize
        }
        if let inputShadowAmount = inputShadowAmount {
            self.inputShadowAmount = inputShadowAmount
        }
        if let inputShadowExtent = inputShadowExtent {
            self.inputShadowExtent = inputShadowExtent
        }
    }


    /// The image to use as an input image. For filters that also use a background image, this is the foreground image.
    public var inputImage: CIImage? {
        get {
            return valueForKey("inputImage") as? CIImage
        }
        set {
            setValue(newValue, forKey: "inputImage")
        }
    }

    /// The target image for a transition.
    public var inputTargetImage: CIImage? {
        get {
            return valueForKey("inputTargetImage") as? CIImage
        }
        set {
            setValue(newValue, forKey: "inputTargetImage")
        }
    }

    /// The image that appears on the back of the source image, as the page curls to reveal the target image.
    public var inputBacksideImage: CIImage? {
        get {
            return valueForKey("inputBacksideImage") as? CIImage
        }
        set {
            setValue(newValue, forKey: "inputBacksideImage")
        }
    }

    /// The extent of the effect.
    public var inputExtent: CIVector? {
        get {
            return valueForKey("inputExtent") as? CIVector
        }
        set {
            setValue(newValue, forKey: "inputExtent")
        }
    }

    /// The parametric time of the transition. This value drives the transition from start (at time 0) to end (at time 1).
    public var inputTime: CGFloat? {
        get {
            return valueForKey("inputTime") as? CGFloat
        }
        set {
            setValue(newValue, forKey: "inputTime")
        }
    }

    /// The angle of the curling page.
    public var inputAngle: CGFloat? {
        get {
            return valueForKey("inputAngle") as? CGFloat
        }
        set {
            setValue(newValue, forKey: "inputAngle")
        }
    }

    /// The radius of the curl.
    public var inputRadius: CGFloat? {
        get {
            return valueForKey("inputRadius") as? CGFloat
        }
        set {
            setValue(newValue, forKey: "inputRadius")
        }
    }

    public var inputShadowSize: CGFloat? {
        get {
            return valueForKey("inputShadowSize") as? CGFloat
        }
        set {
            setValue(newValue, forKey: "inputShadowSize")
        }
    }

    public var inputShadowAmount: CGFloat? {
        get {
            return valueForKey("inputShadowAmount") as? CGFloat
        }
        set {
            setValue(newValue, forKey: "inputShadowAmount")
        }
    }

    public var inputShadowExtent: CIVector? {
        get {
            return valueForKey("inputShadowExtent") as? CIVector
        }
        set {
            setValue(newValue, forKey: "inputShadowExtent")
        }
    }
}

/**
Warps an image by reflecting it in a parallelogram, and then tiles the result.

[More Information](http: //developer.apple.com/cgi-bin/apple_ref.cgi?apple_ref=//apple_ref/doc/filter/ci/CIParallelogramTile)
*/
public class ParallelogramTile: Filter {

    let name = "CIParallelogramTile"

    public init(inputImage: CIImage? = nil, inputCenter: CIVector? = nil, inputAngle: CGFloat? = nil, inputAcuteAngle: CGFloat? = nil, inputWidth: CGFloat? = nil) {
        super.init(name: "CIParallelogramTile")

        if let inputImage = inputImage {
            self.inputImage = inputImage
        }
        if let inputCenter = inputCenter {
            self.inputCenter = inputCenter
        }
        if let inputAngle = inputAngle {
            self.inputAngle = inputAngle
        }
        if let inputAcuteAngle = inputAcuteAngle {
            self.inputAcuteAngle = inputAcuteAngle
        }
        if let inputWidth = inputWidth {
            self.inputWidth = inputWidth
        }
    }


    /// The image to use as an input image. For filters that also use a background image, this is the foreground image.
    public var inputImage: CIImage? {
        get {
            return valueForKey("inputImage") as? CIImage
        }
        set {
            setValue(newValue, forKey: "inputImage")
        }
    }

    /// The x and y position to use as the center of the effect
    public var inputCenter: CIVector? {
        get {
            return valueForKey("inputCenter") as? CIVector
        }
        set {
            setValue(newValue, forKey: "inputCenter")
        }
    }

    /// The angle (in radians) of the tiled pattern.
    public var inputAngle: CGFloat? {
        get {
            return valueForKey("inputAngle") as? CGFloat
        }
        set {
            setValue(newValue, forKey: "inputAngle")
        }
    }

    /// The primary angle for the repeating parallelogram tile. Small values create thin diamond tiles, and higher values create fatter parallelogram tiles.
    public var inputAcuteAngle: CGFloat? {
        get {
            return valueForKey("inputAcuteAngle") as? CGFloat
        }
        set {
            setValue(newValue, forKey: "inputAcuteAngle")
        }
    }

    /// The width of a tile.
    public var inputWidth: CGFloat? {
        get {
            return valueForKey("inputWidth") as? CGFloat
        }
        set {
            setValue(newValue, forKey: "inputWidth")
        }
    }
}

/**
PDF417 Barcode Generator

[More Information](http: //developer.apple.com/cgi-bin/apple_ref.cgi?apple_ref=//apple_ref/doc/filter/ci/CIPDF417BarcodeGenerator)
*/
public class PDF417BarcodeGenerator: Filter {

    let name = "CIPDF417BarcodeGenerator"

    public init(inputMessage: NSData? = nil, inputMinWidth: CGFloat? = nil, inputMaxWidth: CGFloat? = nil, inputMinHeight: CGFloat? = nil, inputMaxHeight: CGFloat? = nil, inputDataColumns: CGFloat? = nil, inputRows: CGFloat? = nil, inputPreferredAspectRatio: CGFloat? = nil, inputCompactionMode: CGFloat? = nil, inputCompactStyle: CGFloat? = nil, inputCorrectionLevel: CGFloat? = nil, inputAlwaysSpecifyCompaction: CGFloat? = nil) {
        super.init(name: "CIPDF417BarcodeGenerator")

        if let inputMessage = inputMessage {
            self.inputMessage = inputMessage
        }
        if let inputMinWidth = inputMinWidth {
            self.inputMinWidth = inputMinWidth
        }
        if let inputMaxWidth = inputMaxWidth {
            self.inputMaxWidth = inputMaxWidth
        }
        if let inputMinHeight = inputMinHeight {
            self.inputMinHeight = inputMinHeight
        }
        if let inputMaxHeight = inputMaxHeight {
            self.inputMaxHeight = inputMaxHeight
        }
        if let inputDataColumns = inputDataColumns {
            self.inputDataColumns = inputDataColumns
        }
        if let inputRows = inputRows {
            self.inputRows = inputRows
        }
        if let inputPreferredAspectRatio = inputPreferredAspectRatio {
            self.inputPreferredAspectRatio = inputPreferredAspectRatio
        }
        if let inputCompactionMode = inputCompactionMode {
            self.inputCompactionMode = inputCompactionMode
        }
        if let inputCompactStyle = inputCompactStyle {
            self.inputCompactStyle = inputCompactStyle
        }
        if let inputCorrectionLevel = inputCorrectionLevel {
            self.inputCorrectionLevel = inputCorrectionLevel
        }
        if let inputAlwaysSpecifyCompaction = inputAlwaysSpecifyCompaction {
            self.inputAlwaysSpecifyCompaction = inputAlwaysSpecifyCompaction
        }
    }


    public var inputMessage: NSData? {
        get {
            return valueForKey("inputMessage") as? NSData
        }
        set {
            setValue(newValue, forKey: "inputMessage")
        }
    }

    public var inputMinWidth: CGFloat? {
        get {
            return valueForKey("inputMinWidth") as? CGFloat
        }
        set {
            setValue(newValue, forKey: "inputMinWidth")
        }
    }

    public var inputMaxWidth: CGFloat? {
        get {
            return valueForKey("inputMaxWidth") as? CGFloat
        }
        set {
            setValue(newValue, forKey: "inputMaxWidth")
        }
    }

    public var inputMinHeight: CGFloat? {
        get {
            return valueForKey("inputMinHeight") as? CGFloat
        }
        set {
            setValue(newValue, forKey: "inputMinHeight")
        }
    }

    public var inputMaxHeight: CGFloat? {
        get {
            return valueForKey("inputMaxHeight") as? CGFloat
        }
        set {
            setValue(newValue, forKey: "inputMaxHeight")
        }
    }

    public var inputDataColumns: CGFloat? {
        get {
            return valueForKey("inputDataColumns") as? CGFloat
        }
        set {
            setValue(newValue, forKey: "inputDataColumns")
        }
    }

    public var inputRows: CGFloat? {
        get {
            return valueForKey("inputRows") as? CGFloat
        }
        set {
            setValue(newValue, forKey: "inputRows")
        }
    }

    public var inputPreferredAspectRatio: CGFloat? {
        get {
            return valueForKey("inputPreferredAspectRatio") as? CGFloat
        }
        set {
            setValue(newValue, forKey: "inputPreferredAspectRatio")
        }
    }

    public var inputCompactionMode: CGFloat? {
        get {
            return valueForKey("inputCompactionMode") as? CGFloat
        }
        set {
            setValue(newValue, forKey: "inputCompactionMode")
        }
    }

    public var inputCompactStyle: CGFloat? {
        get {
            return valueForKey("inputCompactStyle") as? CGFloat
        }
        set {
            setValue(newValue, forKey: "inputCompactStyle")
        }
    }

    public var inputCorrectionLevel: CGFloat? {
        get {
            return valueForKey("inputCorrectionLevel") as? CGFloat
        }
        set {
            setValue(newValue, forKey: "inputCorrectionLevel")
        }
    }

    public var inputAlwaysSpecifyCompaction: CGFloat? {
        get {
            return valueForKey("inputAlwaysSpecifyCompaction") as? CGFloat
        }
        set {
            setValue(newValue, forKey: "inputAlwaysSpecifyCompaction")
        }
    }
}

/**
Apply a perspective correction to an image.

[More Information](http: //developer.apple.com/cgi-bin/apple_ref.cgi?apple_ref=//apple_ref/doc/filter/ci/CIPerspectiveCorrection)
*/
public class PerspectiveCorrection: Filter {

    let name = "CIPerspectiveCorrection"

    public init(inputImage: CIImage? = nil, inputTopLeft: CIVector? = nil, inputTopRight: CIVector? = nil, inputBottomRight: CIVector? = nil, inputBottomLeft: CIVector? = nil) {
        super.init(name: "CIPerspectiveCorrection")

        if let inputImage = inputImage {
            self.inputImage = inputImage
        }
        if let inputTopLeft = inputTopLeft {
            self.inputTopLeft = inputTopLeft
        }
        if let inputTopRight = inputTopRight {
            self.inputTopRight = inputTopRight
        }
        if let inputBottomRight = inputBottomRight {
            self.inputBottomRight = inputBottomRight
        }
        if let inputBottomLeft = inputBottomLeft {
            self.inputBottomLeft = inputBottomLeft
        }
    }


    /// The image to use as an input image. For filters that also use a background image, this is the foreground image.
    public var inputImage: CIImage? {
        get {
            return valueForKey("inputImage") as? CIImage
        }
        set {
            setValue(newValue, forKey: "inputImage")
        }
    }

    /// The top left coordinate to be perspective corrected.
    public var inputTopLeft: CIVector? {
        get {
            return valueForKey("inputTopLeft") as? CIVector
        }
        set {
            setValue(newValue, forKey: "inputTopLeft")
        }
    }

    /// The top right coordinate to be perspective corrected.
    public var inputTopRight: CIVector? {
        get {
            return valueForKey("inputTopRight") as? CIVector
        }
        set {
            setValue(newValue, forKey: "inputTopRight")
        }
    }

    /// The bottom right coordinate to be perspective corrected.
    public var inputBottomRight: CIVector? {
        get {
            return valueForKey("inputBottomRight") as? CIVector
        }
        set {
            setValue(newValue, forKey: "inputBottomRight")
        }
    }

    /// The bottom left coordinate to be perspective corrected.
    public var inputBottomLeft: CIVector? {
        get {
            return valueForKey("inputBottomLeft") as? CIVector
        }
        set {
            setValue(newValue, forKey: "inputBottomLeft")
        }
    }
}

/**
Applies a perspective transform to an image and then tiles the result.

[More Information](http: //developer.apple.com/cgi-bin/apple_ref.cgi?apple_ref=//apple_ref/doc/filter/ci/CIPerspectiveTile)
*/
public class PerspectiveTile: Filter {

    let name = "CIPerspectiveTile"

    public init(inputImage: CIImage? = nil, inputTopLeft: CIVector? = nil, inputTopRight: CIVector? = nil, inputBottomRight: CIVector? = nil, inputBottomLeft: CIVector? = nil) {
        super.init(name: "CIPerspectiveTile")

        if let inputImage = inputImage {
            self.inputImage = inputImage
        }
        if let inputTopLeft = inputTopLeft {
            self.inputTopLeft = inputTopLeft
        }
        if let inputTopRight = inputTopRight {
            self.inputTopRight = inputTopRight
        }
        if let inputBottomRight = inputBottomRight {
            self.inputBottomRight = inputBottomRight
        }
        if let inputBottomLeft = inputBottomLeft {
            self.inputBottomLeft = inputBottomLeft
        }
    }


    /// The image to use as an input image. For filters that also use a background image, this is the foreground image.
    public var inputImage: CIImage? {
        get {
            return valueForKey("inputImage") as? CIImage
        }
        set {
            setValue(newValue, forKey: "inputImage")
        }
    }

    /// The top left coordinate of a tile.
    public var inputTopLeft: CIVector? {
        get {
            return valueForKey("inputTopLeft") as? CIVector
        }
        set {
            setValue(newValue, forKey: "inputTopLeft")
        }
    }

    /// The top right coordinate of a tile.
    public var inputTopRight: CIVector? {
        get {
            return valueForKey("inputTopRight") as? CIVector
        }
        set {
            setValue(newValue, forKey: "inputTopRight")
        }
    }

    /// The bottom right coordinate of a tile.
    public var inputBottomRight: CIVector? {
        get {
            return valueForKey("inputBottomRight") as? CIVector
        }
        set {
            setValue(newValue, forKey: "inputBottomRight")
        }
    }

    /// The bottom left coordinate of a tile.
    public var inputBottomLeft: CIVector? {
        get {
            return valueForKey("inputBottomLeft") as? CIVector
        }
        set {
            setValue(newValue, forKey: "inputBottomLeft")
        }
    }
}

/**
Alters the geometry of an image to simulate the observer changing viewing position. You can use the perspective filter to skew an image.

[More Information](http: //developer.apple.com/cgi-bin/apple_ref.cgi?apple_ref=//apple_ref/doc/filter/ci/CIPerspectiveTransform)
*/
public class PerspectiveTransform: Filter {

    let name = "CIPerspectiveTransform"

    public init(inputImage: CIImage? = nil, inputTopLeft: CIVector? = nil, inputTopRight: CIVector? = nil, inputBottomRight: CIVector? = nil, inputBottomLeft: CIVector? = nil) {
        super.init(name: "CIPerspectiveTransform")

        if let inputImage = inputImage {
            self.inputImage = inputImage
        }
        if let inputTopLeft = inputTopLeft {
            self.inputTopLeft = inputTopLeft
        }
        if let inputTopRight = inputTopRight {
            self.inputTopRight = inputTopRight
        }
        if let inputBottomRight = inputBottomRight {
            self.inputBottomRight = inputBottomRight
        }
        if let inputBottomLeft = inputBottomLeft {
            self.inputBottomLeft = inputBottomLeft
        }
    }


    /// The image to use as an input image. For filters that also use a background image, this is the foreground image.
    public var inputImage: CIImage? {
        get {
            return valueForKey("inputImage") as? CIImage
        }
        set {
            setValue(newValue, forKey: "inputImage")
        }
    }

    /// The top left coordinate to map the image to.
    public var inputTopLeft: CIVector? {
        get {
            return valueForKey("inputTopLeft") as? CIVector
        }
        set {
            setValue(newValue, forKey: "inputTopLeft")
        }
    }

    /// The top right coordinate to map the image to.
    public var inputTopRight: CIVector? {
        get {
            return valueForKey("inputTopRight") as? CIVector
        }
        set {
            setValue(newValue, forKey: "inputTopRight")
        }
    }

    /// The bottom right coordinate to map the image to.
    public var inputBottomRight: CIVector? {
        get {
            return valueForKey("inputBottomRight") as? CIVector
        }
        set {
            setValue(newValue, forKey: "inputBottomRight")
        }
    }

    /// The bottom left coordinate to map the image to.
    public var inputBottomLeft: CIVector? {
        get {
            return valueForKey("inputBottomLeft") as? CIVector
        }
        set {
            setValue(newValue, forKey: "inputBottomLeft")
        }
    }
}

/**
Perspective Transform with Extent

[More Information](http: //developer.apple.com/cgi-bin/apple_ref.cgi?apple_ref=//apple_ref/doc/filter/ci/CIPerspectiveTransformWithExtent)
*/
public class PerspectiveTransformWithExtent: Filter {

    let name = "CIPerspectiveTransformWithExtent"

    public init(inputImage: CIImage? = nil, inputExtent: CIVector? = nil, inputTopLeft: CIVector? = nil, inputTopRight: CIVector? = nil, inputBottomRight: CIVector? = nil, inputBottomLeft: CIVector? = nil) {
        super.init(name: "CIPerspectiveTransformWithExtent")

        if let inputImage = inputImage {
            self.inputImage = inputImage
        }
        if let inputExtent = inputExtent {
            self.inputExtent = inputExtent
        }
        if let inputTopLeft = inputTopLeft {
            self.inputTopLeft = inputTopLeft
        }
        if let inputTopRight = inputTopRight {
            self.inputTopRight = inputTopRight
        }
        if let inputBottomRight = inputBottomRight {
            self.inputBottomRight = inputBottomRight
        }
        if let inputBottomLeft = inputBottomLeft {
            self.inputBottomLeft = inputBottomLeft
        }
    }


    /// The image to use as an input image. For filters that also use a background image, this is the foreground image.
    public var inputImage: CIImage? {
        get {
            return valueForKey("inputImage") as? CIImage
        }
        set {
            setValue(newValue, forKey: "inputImage")
        }
    }

    /// A rectangle that defines the extent of the effect.
    public var inputExtent: CIVector? {
        get {
            return valueForKey("inputExtent") as? CIVector
        }
        set {
            setValue(newValue, forKey: "inputExtent")
        }
    }

    public var inputTopLeft: CIVector? {
        get {
            return valueForKey("inputTopLeft") as? CIVector
        }
        set {
            setValue(newValue, forKey: "inputTopLeft")
        }
    }

    public var inputTopRight: CIVector? {
        get {
            return valueForKey("inputTopRight") as? CIVector
        }
        set {
            setValue(newValue, forKey: "inputTopRight")
        }
    }

    public var inputBottomRight: CIVector? {
        get {
            return valueForKey("inputBottomRight") as? CIVector
        }
        set {
            setValue(newValue, forKey: "inputBottomRight")
        }
    }

    public var inputBottomLeft: CIVector? {
        get {
            return valueForKey("inputBottomLeft") as? CIVector
        }
        set {
            setValue(newValue, forKey: "inputBottomLeft")
        }
    }
}

/**
Photo Effect Chrome

[More Information](http: //developer.apple.com/cgi-bin/apple_ref.cgi?apple_ref=//apple_ref/doc/filter/ci/CIPhotoEffectChrome)
*/
public class PhotoEffectChrome: Filter {

    let name = "CIPhotoEffectChrome"

    public init(inputImage: CIImage? = nil) {
        super.init(name: "CIPhotoEffectChrome")

        if let inputImage = inputImage {
            self.inputImage = inputImage
        }
    }


    /// The image to use as an input image. For filters that also use a background image, this is the foreground image.
    public var inputImage: CIImage? {
        get {
            return valueForKey("inputImage") as? CIImage
        }
        set {
            setValue(newValue, forKey: "inputImage")
        }
    }
}

/**
Photo Effect Fade

[More Information](http: //developer.apple.com/cgi-bin/apple_ref.cgi?apple_ref=//apple_ref/doc/filter/ci/CIPhotoEffectFade)
*/
public class PhotoEffectFade: Filter {

    let name = "CIPhotoEffectFade"

    public init(inputImage: CIImage? = nil) {
        super.init(name: "CIPhotoEffectFade")

        if let inputImage = inputImage {
            self.inputImage = inputImage
        }
    }


    /// The image to use as an input image. For filters that also use a background image, this is the foreground image.
    public var inputImage: CIImage? {
        get {
            return valueForKey("inputImage") as? CIImage
        }
        set {
            setValue(newValue, forKey: "inputImage")
        }
    }
}

/**
Photo Effect Instant

[More Information](http: //developer.apple.com/cgi-bin/apple_ref.cgi?apple_ref=//apple_ref/doc/filter/ci/CIPhotoEffectInstant)
*/
public class PhotoEffectInstant: Filter {

    let name = "CIPhotoEffectInstant"

    public init(inputImage: CIImage? = nil) {
        super.init(name: "CIPhotoEffectInstant")

        if let inputImage = inputImage {
            self.inputImage = inputImage
        }
    }


    /// The image to use as an input image. For filters that also use a background image, this is the foreground image.
    public var inputImage: CIImage? {
        get {
            return valueForKey("inputImage") as? CIImage
        }
        set {
            setValue(newValue, forKey: "inputImage")
        }
    }
}

/**
Photo Effect Mono

[More Information](http: //developer.apple.com/cgi-bin/apple_ref.cgi?apple_ref=//apple_ref/doc/filter/ci/CIPhotoEffectMono)
*/
public class PhotoEffectMono: Filter {

    let name = "CIPhotoEffectMono"

    public init(inputImage: CIImage? = nil) {
        super.init(name: "CIPhotoEffectMono")

        if let inputImage = inputImage {
            self.inputImage = inputImage
        }
    }


    /// The image to use as an input image. For filters that also use a background image, this is the foreground image.
    public var inputImage: CIImage? {
        get {
            return valueForKey("inputImage") as? CIImage
        }
        set {
            setValue(newValue, forKey: "inputImage")
        }
    }
}

/**
Photo Effect Noir

[More Information](http: //developer.apple.com/cgi-bin/apple_ref.cgi?apple_ref=//apple_ref/doc/filter/ci/CIPhotoEffectNoir)
*/
public class PhotoEffectNoir: Filter {

    let name = "CIPhotoEffectNoir"

    public init(inputImage: CIImage? = nil) {
        super.init(name: "CIPhotoEffectNoir")

        if let inputImage = inputImage {
            self.inputImage = inputImage
        }
    }


    /// The image to use as an input image. For filters that also use a background image, this is the foreground image.
    public var inputImage: CIImage? {
        get {
            return valueForKey("inputImage") as? CIImage
        }
        set {
            setValue(newValue, forKey: "inputImage")
        }
    }
}

/**
Photo Effect Process

[More Information](http: //developer.apple.com/cgi-bin/apple_ref.cgi?apple_ref=//apple_ref/doc/filter/ci/CIPhotoEffectProcess)
*/
public class PhotoEffectProcess: Filter {

    let name = "CIPhotoEffectProcess"

    public init(inputImage: CIImage? = nil) {
        super.init(name: "CIPhotoEffectProcess")

        if let inputImage = inputImage {
            self.inputImage = inputImage
        }
    }


    /// The image to use as an input image. For filters that also use a background image, this is the foreground image.
    public var inputImage: CIImage? {
        get {
            return valueForKey("inputImage") as? CIImage
        }
        set {
            setValue(newValue, forKey: "inputImage")
        }
    }
}

/**
Photo Effect Tonal

[More Information](http: //developer.apple.com/cgi-bin/apple_ref.cgi?apple_ref=//apple_ref/doc/filter/ci/CIPhotoEffectTonal)
*/
public class PhotoEffectTonal: Filter {

    let name = "CIPhotoEffectTonal"

    public init(inputImage: CIImage? = nil) {
        super.init(name: "CIPhotoEffectTonal")

        if let inputImage = inputImage {
            self.inputImage = inputImage
        }
    }


    /// The image to use as an input image. For filters that also use a background image, this is the foreground image.
    public var inputImage: CIImage? {
        get {
            return valueForKey("inputImage") as? CIImage
        }
        set {
            setValue(newValue, forKey: "inputImage")
        }
    }
}

/**
Photo Effect Transfer

[More Information](http: //developer.apple.com/cgi-bin/apple_ref.cgi?apple_ref=//apple_ref/doc/filter/ci/CIPhotoEffectTransfer)
*/
public class PhotoEffectTransfer: Filter {

    let name = "CIPhotoEffectTransfer"

    public init(inputImage: CIImage? = nil) {
        super.init(name: "CIPhotoEffectTransfer")

        if let inputImage = inputImage {
            self.inputImage = inputImage
        }
    }


    /// The image to use as an input image. For filters that also use a background image, this is the foreground image.
    public var inputImage: CIImage? {
        get {
            return valueForKey("inputImage") as? CIImage
        }
        set {
            setValue(newValue, forKey: "inputImage")
        }
    }
}

/**
Creates a rectangular-shaped area that pinches source pixels inward, distorting those pixels closest to the rectangle the most.

[More Information](http: //developer.apple.com/cgi-bin/apple_ref.cgi?apple_ref=//apple_ref/doc/filter/ci/CIPinchDistortion)
*/
public class PinchDistortion: Filter {

    let name = "CIPinchDistortion"

    public init(inputImage: CIImage? = nil, inputCenter: CIVector? = nil, inputRadius: CGFloat? = nil, inputScale: CGFloat? = nil) {
        super.init(name: "CIPinchDistortion")

        if let inputImage = inputImage {
            self.inputImage = inputImage
        }
        if let inputCenter = inputCenter {
            self.inputCenter = inputCenter
        }
        if let inputRadius = inputRadius {
            self.inputRadius = inputRadius
        }
        if let inputScale = inputScale {
            self.inputScale = inputScale
        }
    }


    /// The image to use as an input image. For filters that also use a background image, this is the foreground image.
    public var inputImage: CIImage? {
        get {
            return valueForKey("inputImage") as? CIImage
        }
        set {
            setValue(newValue, forKey: "inputImage")
        }
    }

    /// The center of the effect as x and y coordinates.
    public var inputCenter: CIVector? {
        get {
            return valueForKey("inputCenter") as? CIVector
        }
        set {
            setValue(newValue, forKey: "inputCenter")
        }
    }

    /// The radius determines how many pixels are used to create the distortion. The larger the radius, wider the extent of the distortion.
    public var inputRadius: CGFloat? {
        get {
            return valueForKey("inputRadius") as? CGFloat
        }
        set {
            setValue(newValue, forKey: "inputRadius")
        }
    }

    /// The amount of pinching. A value of 0.0 has no effect. A value of 1.0 is the maximum pinch.
    public var inputScale: CGFloat? {
        get {
            return valueForKey("inputScale") as? CGFloat
        }
        set {
            setValue(newValue, forKey: "inputScale")
        }
    }
}

/**
Pin Light Blend Mode

[More Information](http: //developer.apple.com/cgi-bin/apple_ref.cgi?apple_ref=//apple_ref/doc/filter/ci/CIPinLightBlendMode)
*/
public class PinLightBlendMode: Filter {

    let name = "CIPinLightBlendMode"

    public init(inputImage: CIImage? = nil, inputBackgroundImage: CIImage? = nil) {
        super.init(name: "CIPinLightBlendMode")

        if let inputImage = inputImage {
            self.inputImage = inputImage
        }
        if let inputBackgroundImage = inputBackgroundImage {
            self.inputBackgroundImage = inputBackgroundImage
        }
    }


    /// The image to use as an input image. For filters that also use a background image, this is the foreground image.
    public var inputImage: CIImage? {
        get {
            return valueForKey("inputImage") as? CIImage
        }
        set {
            setValue(newValue, forKey: "inputImage")
        }
    }

    /// The image to use as a background image.
    public var inputBackgroundImage: CIImage? {
        get {
            return valueForKey("inputBackgroundImage") as? CIImage
        }
        set {
            setValue(newValue, forKey: "inputBackgroundImage")
        }
    }
}

/**
Makes an image blocky.

[More Information](http: //developer.apple.com/cgi-bin/apple_ref.cgi?apple_ref=//apple_ref/doc/filter/ci/CIPixellate)
*/
public class Pixellate: Filter {

    let name = "CIPixellate"

    public init(inputImage: CIImage? = nil, inputCenter: CIVector? = nil, inputScale: CGFloat? = nil) {
        super.init(name: "CIPixellate")

        if let inputImage = inputImage {
            self.inputImage = inputImage
        }
        if let inputCenter = inputCenter {
            self.inputCenter = inputCenter
        }
        if let inputScale = inputScale {
            self.inputScale = inputScale
        }
    }


    /// The image to use as an input image. For filters that also use a background image, this is the foreground image.
    public var inputImage: CIImage? {
        get {
            return valueForKey("inputImage") as? CIImage
        }
        set {
            setValue(newValue, forKey: "inputImage")
        }
    }

    /// The x and y position to use as the center of the effect
    public var inputCenter: CIVector? {
        get {
            return valueForKey("inputCenter") as? CIVector
        }
        set {
            setValue(newValue, forKey: "inputCenter")
        }
    }

    /// The scale determines the size of the squares. Larger values result in larger squares.
    public var inputScale: CGFloat? {
        get {
            return valueForKey("inputScale") as? CGFloat
        }
        set {
            setValue(newValue, forKey: "inputScale")
        }
    }
}

/**
Renders the source image in a pointillistic style.

[More Information](http: //developer.apple.com/cgi-bin/apple_ref.cgi?apple_ref=//apple_ref/doc/filter/ci/CIPointillize)
*/
public class Pointillize: Filter {

    let name = "CIPointillize"

    public init(inputImage: CIImage? = nil, inputRadius: CGFloat? = nil, inputCenter: CIVector? = nil) {
        super.init(name: "CIPointillize")

        if let inputImage = inputImage {
            self.inputImage = inputImage
        }
        if let inputRadius = inputRadius {
            self.inputRadius = inputRadius
        }
        if let inputCenter = inputCenter {
            self.inputCenter = inputCenter
        }
    }


    /// The image to use as an input image. For filters that also use a background image, this is the foreground image.
    public var inputImage: CIImage? {
        get {
            return valueForKey("inputImage") as? CIImage
        }
        set {
            setValue(newValue, forKey: "inputImage")
        }
    }

    /// The radius of the circles in the resulting pattern.
    public var inputRadius: CGFloat? {
        get {
            return valueForKey("inputRadius") as? CGFloat
        }
        set {
            setValue(newValue, forKey: "inputRadius")
        }
    }

    /// The x and y position to use as the center of the effect
    public var inputCenter: CIVector? {
        get {
            return valueForKey("inputCenter") as? CIVector
        }
        set {
            setValue(newValue, forKey: "inputCenter")
        }
    }
}

/**
QRCode Generator

[More Information](http: //developer.apple.com/cgi-bin/apple_ref.cgi?apple_ref=//apple_ref/doc/filter/ci/CIQRCodeGenerator)
*/
public class QRCodeGenerator: Filter {

    let name = "CIQRCodeGenerator"

    public init(inputMessage: NSData? = nil, inputCorrectionLevel: NSString? = nil) {
        super.init(name: "CIQRCodeGenerator")

        if let inputMessage = inputMessage {
            self.inputMessage = inputMessage
        }
        if let inputCorrectionLevel = inputCorrectionLevel {
            self.inputCorrectionLevel = inputCorrectionLevel
        }
    }


    public var inputMessage: NSData? {
        get {
            return valueForKey("inputMessage") as? NSData
        }
        set {
            setValue(newValue, forKey: "inputMessage")
        }
    }

    /// QRCode correction level L, M, Q, or H.
    public var inputCorrectionLevel: NSString? {
        get {
            return valueForKey("inputCorrectionLevel") as? NSString
        }
        set {
            setValue(newValue, forKey: "inputCorrectionLevel")
        }
    }
}

/**
Generates a gradient that varies radially between two circles having the same center. It is valid for one of the two circles to have a radius of 0.

[More Information](http: //developer.apple.com/cgi-bin/apple_ref.cgi?apple_ref=//apple_ref/doc/filter/ci/CIRadialGradient)
*/
public class RadialGradient: Filter {

    let name = "CIRadialGradient"

    public init(inputCenter: CIVector? = nil, inputRadius0: CGFloat? = nil, inputRadius1: CGFloat? = nil, inputColor0: CIColor? = nil, inputColor1: CIColor? = nil) {
        super.init(name: "CIRadialGradient")

        if let inputCenter = inputCenter {
            self.inputCenter = inputCenter
        }
        if let inputRadius0 = inputRadius0 {
            self.inputRadius0 = inputRadius0
        }
        if let inputRadius1 = inputRadius1 {
            self.inputRadius1 = inputRadius1
        }
        if let inputColor0 = inputColor0 {
            self.inputColor0 = inputColor0
        }
        if let inputColor1 = inputColor1 {
            self.inputColor1 = inputColor1
        }
    }


    /// The center of the effect as x and y coordinates.
    public var inputCenter: CIVector? {
        get {
            return valueForKey("inputCenter") as? CIVector
        }
        set {
            setValue(newValue, forKey: "inputCenter")
        }
    }

    /// The radius of the starting circle to use in the gradient.
    public var inputRadius0: CGFloat? {
        get {
            return valueForKey("inputRadius0") as? CGFloat
        }
        set {
            setValue(newValue, forKey: "inputRadius0")
        }
    }

    /// The radius of the ending circle to use in the gradient.
    public var inputRadius1: CGFloat? {
        get {
            return valueForKey("inputRadius1") as? CGFloat
        }
        set {
            setValue(newValue, forKey: "inputRadius1")
        }
    }

    /// The first color to use in the gradient.
    public var inputColor0: CIColor? {
        get {
            return valueForKey("inputColor0") as? CIColor
        }
        set {
            setValue(newValue, forKey: "inputColor0")
        }
    }

    /// The second color to use in the gradient.
    public var inputColor1: CIColor? {
        get {
            return valueForKey("inputColor1") as? CIColor
        }
        set {
            setValue(newValue, forKey: "inputColor1")
        }
    }
}

/**
Generates an image of infinite extent whose pixel values are made up of four independent, uniformly-distributed random numbers in the 0 to 1 range.

[More Information](http: //developer.apple.com/cgi-bin/apple_ref.cgi?apple_ref=//apple_ref/doc/filter/ci/CIRandomGenerator)
*/
public class RandomGenerator: Filter {

    let name = "CIRandomGenerator"

    public init() {
        super.init(name: "CIRandomGenerator")

    }

}

/**
Transitions from one image to another by creating a circular wave that expands from the center point, revealing the new image in the wake of the wave.

[More Information](http: //developer.apple.com/cgi-bin/apple_ref.cgi?apple_ref=//apple_ref/doc/filter/ci/CIRippleTransition)
*/
public class RippleTransition: Filter {

    let name = "CIRippleTransition"

    public init(inputImage: CIImage? = nil, inputTargetImage: CIImage? = nil, inputShadingImage: CIImage? = nil, inputCenter: CIVector? = nil, inputExtent: CIVector? = nil, inputTime: CGFloat? = nil, inputWidth: CGFloat? = nil, inputScale: CGFloat? = nil) {
        super.init(name: "CIRippleTransition")

        if let inputImage = inputImage {
            self.inputImage = inputImage
        }
        if let inputTargetImage = inputTargetImage {
            self.inputTargetImage = inputTargetImage
        }
        if let inputShadingImage = inputShadingImage {
            self.inputShadingImage = inputShadingImage
        }
        if let inputCenter = inputCenter {
            self.inputCenter = inputCenter
        }
        if let inputExtent = inputExtent {
            self.inputExtent = inputExtent
        }
        if let inputTime = inputTime {
            self.inputTime = inputTime
        }
        if let inputWidth = inputWidth {
            self.inputWidth = inputWidth
        }
        if let inputScale = inputScale {
            self.inputScale = inputScale
        }
    }


    /// The image to use as an input image. For filters that also use a background image, this is the foreground image.
    public var inputImage: CIImage? {
        get {
            return valueForKey("inputImage") as? CIImage
        }
        set {
            setValue(newValue, forKey: "inputImage")
        }
    }

    /// The target image for a transition.
    public var inputTargetImage: CIImage? {
        get {
            return valueForKey("inputTargetImage") as? CIImage
        }
        set {
            setValue(newValue, forKey: "inputTargetImage")
        }
    }

    /// An image that looks like a shaded sphere enclosed in a square image.
    public var inputShadingImage: CIImage? {
        get {
            return valueForKey("inputShadingImage") as? CIImage
        }
        set {
            setValue(newValue, forKey: "inputShadingImage")
        }
    }

    /// The x and y position to use as the center of the effect
    public var inputCenter: CIVector? {
        get {
            return valueForKey("inputCenter") as? CIVector
        }
        set {
            setValue(newValue, forKey: "inputCenter")
        }
    }

    /// A rectangle that defines the extent of the effect.
    public var inputExtent: CIVector? {
        get {
            return valueForKey("inputExtent") as? CIVector
        }
        set {
            setValue(newValue, forKey: "inputExtent")
        }
    }

    /// The parametric time of the transition. This value drives the transition from start (at time 0) to end (at time 1).
    public var inputTime: CGFloat? {
        get {
            return valueForKey("inputTime") as? CGFloat
        }
        set {
            setValue(newValue, forKey: "inputTime")
        }
    }

    /// The width of the ripple.
    public var inputWidth: CGFloat? {
        get {
            return valueForKey("inputWidth") as? CGFloat
        }
        set {
            setValue(newValue, forKey: "inputWidth")
        }
    }

    /// A value that determines whether the ripple starts as a bulge (higher value) or a dimple (lower value).
    public var inputScale: CGFloat? {
        get {
            return valueForKey("inputScale") as? CGFloat
        }
        set {
            setValue(newValue, forKey: "inputScale")
        }
    }
}

/**
Calculates the average color for each row of the specified area in an image, returning the result in a 1D image.

[More Information](http: //developer.apple.com/cgi-bin/apple_ref.cgi?apple_ref=//apple_ref/doc/filter/ci/CIRowAverage)
*/
public class RowAverage: Filter {

    let name = "CIRowAverage"

    public init(inputImage: CIImage? = nil, inputExtent: CIVector? = nil) {
        super.init(name: "CIRowAverage")

        if let inputImage = inputImage {
            self.inputImage = inputImage
        }
        if let inputExtent = inputExtent {
            self.inputExtent = inputExtent
        }
    }


    /// The image to process.
    public var inputImage: CIImage? {
        get {
            return valueForKey("inputImage") as? CIImage
        }
        set {
            setValue(newValue, forKey: "inputImage")
        }
    }

    /// A rectangle that specifies the subregion of the image that you want to process.
    public var inputExtent: CIVector? {
        get {
            return valueForKey("inputExtent") as? CIVector
        }
        set {
            setValue(newValue, forKey: "inputExtent")
        }
    }
}

/**
Uses the luminance and hue values of the background with the saturation of the source image. Areas of the background that have no saturation (that is, pure gray areas) do not produce a change.

[More Information](http: //developer.apple.com/cgi-bin/apple_ref.cgi?apple_ref=//apple_ref/doc/filter/ci/CISaturationBlendMode)
*/
public class SaturationBlendMode: Filter {

    let name = "CISaturationBlendMode"

    public init(inputImage: CIImage? = nil, inputBackgroundImage: CIImage? = nil) {
        super.init(name: "CISaturationBlendMode")

        if let inputImage = inputImage {
            self.inputImage = inputImage
        }
        if let inputBackgroundImage = inputBackgroundImage {
            self.inputBackgroundImage = inputBackgroundImage
        }
    }


    /// The image to use as an input image. For filters that also use a background image, this is the foreground image.
    public var inputImage: CIImage? {
        get {
            return valueForKey("inputImage") as? CIImage
        }
        set {
            setValue(newValue, forKey: "inputImage")
        }
    }

    /// The image to use as a background image.
    public var inputBackgroundImage: CIImage? {
        get {
            return valueForKey("inputBackgroundImage") as? CIImage
        }
        set {
            setValue(newValue, forKey: "inputBackgroundImage")
        }
    }
}

/**
Multiplies the inverse of the source image samples with the inverse of the background image samples. This results in colors that are at least as light as either of the two contributing sample colors.

[More Information](http: //developer.apple.com/cgi-bin/apple_ref.cgi?apple_ref=//apple_ref/doc/filter/ci/CIScreenBlendMode)
*/
public class ScreenBlendMode: Filter {

    let name = "CIScreenBlendMode"

    public init(inputImage: CIImage? = nil, inputBackgroundImage: CIImage? = nil) {
        super.init(name: "CIScreenBlendMode")

        if let inputImage = inputImage {
            self.inputImage = inputImage
        }
        if let inputBackgroundImage = inputBackgroundImage {
            self.inputBackgroundImage = inputBackgroundImage
        }
    }


    /// The image to use as an input image. For filters that also use a background image, this is the foreground image.
    public var inputImage: CIImage? {
        get {
            return valueForKey("inputImage") as? CIImage
        }
        set {
            setValue(newValue, forKey: "inputImage")
        }
    }

    /// The image to use as a background image.
    public var inputBackgroundImage: CIImage? {
        get {
            return valueForKey("inputBackgroundImage") as? CIImage
        }
        set {
            setValue(newValue, forKey: "inputBackgroundImage")
        }
    }
}

/**
Maps the colors of an image to various shades of brown.

[More Information](http: //developer.apple.com/cgi-bin/apple_ref.cgi?apple_ref=//apple_ref/doc/filter/ci/CISepiaTone)
*/
public class SepiaTone: Filter {

    let name = "CISepiaTone"

    public init(inputImage: CIImage? = nil, inputIntensity: CGFloat? = nil) {
        super.init(name: "CISepiaTone")

        if let inputImage = inputImage {
            self.inputImage = inputImage
        }
        if let inputIntensity = inputIntensity {
            self.inputIntensity = inputIntensity
        }
    }


    /// The image to use as an input image. For filters that also use a background image, this is the foreground image.
    public var inputImage: CIImage? {
        get {
            return valueForKey("inputImage") as? CIImage
        }
        set {
            setValue(newValue, forKey: "inputImage")
        }
    }

    /// The intensity of the sepia effect. A value of 1.0 creates a monochrome sepia image. A value of 0.0 has no effect on the image.
    public var inputIntensity: CGFloat? {
        get {
            return valueForKey("inputIntensity") as? CGFloat
        }
        set {
            setValue(newValue, forKey: "inputIntensity")
        }
    }
}

/**
Produces a shaded image from a height field. The height field is defined to have greater heights with lighter shades, and lesser heights (lower areas) with darker shades. You can combine this filter with the CIHeightFieldFromMask filter to produce quick shadings of masks, such as text.

[More Information](http: //developer.apple.com/cgi-bin/apple_ref.cgi?apple_ref=//apple_ref/doc/filter/ci/CIShadedMaterial)
*/
public class ShadedMaterial: Filter {

    let name = "CIShadedMaterial"

    public init(inputImage: CIImage? = nil, inputShadingImage: CIImage? = nil, inputScale: CGFloat? = nil) {
        super.init(name: "CIShadedMaterial")

        if let inputImage = inputImage {
            self.inputImage = inputImage
        }
        if let inputShadingImage = inputShadingImage {
            self.inputShadingImage = inputShadingImage
        }
        if let inputScale = inputScale {
            self.inputScale = inputScale
        }
    }


    /// The image to use as an input image. For filters that also use a background image, this is the foreground image.
    public var inputImage: CIImage? {
        get {
            return valueForKey("inputImage") as? CIImage
        }
        set {
            setValue(newValue, forKey: "inputImage")
        }
    }

    /// The image to use as the height field. The resulting image has greater heights with lighter shades, and lesser heights (lower areas) with darker shades.
    public var inputShadingImage: CIImage? {
        get {
            return valueForKey("inputShadingImage") as? CIImage
        }
        set {
            setValue(newValue, forKey: "inputShadingImage")
        }
    }

    /// THe scale of the effect. The higher the value, the more dramatic the effect.
    public var inputScale: CGFloat? {
        get {
            return valueForKey("inputScale") as? CGFloat
        }
        set {
            setValue(newValue, forKey: "inputScale")
        }
    }
}

/**
Increases image detail by sharpening. It operates on the luminance of the image; the chrominance of the pixels remains unaffected.

[More Information](http: //developer.apple.com/cgi-bin/apple_ref.cgi?apple_ref=//apple_ref/doc/filter/ci/CISharpenLuminance)
*/
public class SharpenLuminance: Filter {

    let name = "CISharpenLuminance"

    public init(inputImage: CIImage? = nil, inputSharpness: CGFloat? = nil) {
        super.init(name: "CISharpenLuminance")

        if let inputImage = inputImage {
            self.inputImage = inputImage
        }
        if let inputSharpness = inputSharpness {
            self.inputSharpness = inputSharpness
        }
    }


    /// The image to use as an input image. For filters that also use a background image, this is the foreground image.
    public var inputImage: CIImage? {
        get {
            return valueForKey("inputImage") as? CIImage
        }
        set {
            setValue(newValue, forKey: "inputImage")
        }
    }

    /// The amount of sharpening to apply. Larger values are sharper.
    public var inputSharpness: CGFloat? {
        get {
            return valueForKey("inputSharpness") as? CGFloat
        }
        set {
            setValue(newValue, forKey: "inputSharpness")
        }
    }
}

/**
Produces a tiled image from a source image by applying a 6-way reflected symmetry.

[More Information](http: //developer.apple.com/cgi-bin/apple_ref.cgi?apple_ref=//apple_ref/doc/filter/ci/CISixfoldReflectedTile)
*/
public class SixfoldReflectedTile: Filter {

    let name = "CISixfoldReflectedTile"

    public init(inputImage: CIImage? = nil, inputCenter: CIVector? = nil, inputAngle: CGFloat? = nil, inputWidth: CGFloat? = nil) {
        super.init(name: "CISixfoldReflectedTile")

        if let inputImage = inputImage {
            self.inputImage = inputImage
        }
        if let inputCenter = inputCenter {
            self.inputCenter = inputCenter
        }
        if let inputAngle = inputAngle {
            self.inputAngle = inputAngle
        }
        if let inputWidth = inputWidth {
            self.inputWidth = inputWidth
        }
    }


    /// The image to use as an input image. For filters that also use a background image, this is the foreground image.
    public var inputImage: CIImage? {
        get {
            return valueForKey("inputImage") as? CIImage
        }
        set {
            setValue(newValue, forKey: "inputImage")
        }
    }

    /// The x and y position to use as the center of the effect
    public var inputCenter: CIVector? {
        get {
            return valueForKey("inputCenter") as? CIVector
        }
        set {
            setValue(newValue, forKey: "inputCenter")
        }
    }

    /// The angle (in radians) of the tiled pattern.
    public var inputAngle: CGFloat? {
        get {
            return valueForKey("inputAngle") as? CGFloat
        }
        set {
            setValue(newValue, forKey: "inputAngle")
        }
    }

    /// The width of a tile.
    public var inputWidth: CGFloat? {
        get {
            return valueForKey("inputWidth") as? CGFloat
        }
        set {
            setValue(newValue, forKey: "inputWidth")
        }
    }
}

/**
Produces a tiled image from a source image by rotating the source at increments of 60 degrees.

[More Information](http: //developer.apple.com/cgi-bin/apple_ref.cgi?apple_ref=//apple_ref/doc/filter/ci/CISixfoldRotatedTile)
*/
public class SixfoldRotatedTile: Filter {

    let name = "CISixfoldRotatedTile"

    public init(inputImage: CIImage? = nil, inputCenter: CIVector? = nil, inputAngle: CGFloat? = nil, inputWidth: CGFloat? = nil) {
        super.init(name: "CISixfoldRotatedTile")

        if let inputImage = inputImage {
            self.inputImage = inputImage
        }
        if let inputCenter = inputCenter {
            self.inputCenter = inputCenter
        }
        if let inputAngle = inputAngle {
            self.inputAngle = inputAngle
        }
        if let inputWidth = inputWidth {
            self.inputWidth = inputWidth
        }
    }


    /// The image to use as an input image. For filters that also use a background image, this is the foreground image.
    public var inputImage: CIImage? {
        get {
            return valueForKey("inputImage") as? CIImage
        }
        set {
            setValue(newValue, forKey: "inputImage")
        }
    }

    /// The x and y position to use as the center of the effect
    public var inputCenter: CIVector? {
        get {
            return valueForKey("inputCenter") as? CIVector
        }
        set {
            setValue(newValue, forKey: "inputCenter")
        }
    }

    /// The angle (in radians) of the tiled pattern.
    public var inputAngle: CGFloat? {
        get {
            return valueForKey("inputAngle") as? CGFloat
        }
        set {
            setValue(newValue, forKey: "inputAngle")
        }
    }

    /// The width of a tile.
    public var inputWidth: CGFloat? {
        get {
            return valueForKey("inputWidth") as? CGFloat
        }
        set {
            setValue(newValue, forKey: "inputWidth")
        }
    }
}

/**
CISmoothLinearGradient

[More Information](http: //developer.apple.com/cgi-bin/apple_ref.cgi?apple_ref=//apple_ref/doc/filter/ci/CISmoothLinearGradient)
*/
public class SmoothLinearGradient: Filter {

    let name = "CISmoothLinearGradient"

    public init(inputPoint0: CIVector? = nil, inputPoint1: CIVector? = nil, inputColor0: CIColor? = nil, inputColor1: CIColor? = nil) {
        super.init(name: "CISmoothLinearGradient")

        if let inputPoint0 = inputPoint0 {
            self.inputPoint0 = inputPoint0
        }
        if let inputPoint1 = inputPoint1 {
            self.inputPoint1 = inputPoint1
        }
        if let inputColor0 = inputColor0 {
            self.inputColor0 = inputColor0
        }
        if let inputColor1 = inputColor1 {
            self.inputColor1 = inputColor1
        }
    }


    public var inputPoint0: CIVector? {
        get {
            return valueForKey("inputPoint0") as? CIVector
        }
        set {
            setValue(newValue, forKey: "inputPoint0")
        }
    }

    public var inputPoint1: CIVector? {
        get {
            return valueForKey("inputPoint1") as? CIVector
        }
        set {
            setValue(newValue, forKey: "inputPoint1")
        }
    }

    public var inputColor0: CIColor? {
        get {
            return valueForKey("inputColor0") as? CIColor
        }
        set {
            setValue(newValue, forKey: "inputColor0")
        }
    }

    public var inputColor1: CIColor? {
        get {
            return valueForKey("inputColor1") as? CIColor
        }
        set {
            setValue(newValue, forKey: "inputColor1")
        }
    }
}

/**
Either darkens or lightens colors, depending on the source image sample color. If the source image sample color is lighter than 50% gray, the background is lightened, similar to dodging. If the source image sample color is darker than 50% gray, the background is darkened, similar to burning. If the source image sample color is equal to 50% gray, the background is not changed. Image samples that are equal to pure black or pure white produce darker or lighter areas, but do not result in pure black or white. The overall effect is similar to what you would achieve by shining a diffuse spotlight on the source image.

[More Information](http: //developer.apple.com/cgi-bin/apple_ref.cgi?apple_ref=//apple_ref/doc/filter/ci/CISoftLightBlendMode)
*/
public class SoftLightBlendMode: Filter {

    let name = "CISoftLightBlendMode"

    public init(inputImage: CIImage? = nil, inputBackgroundImage: CIImage? = nil) {
        super.init(name: "CISoftLightBlendMode")

        if let inputImage = inputImage {
            self.inputImage = inputImage
        }
        if let inputBackgroundImage = inputBackgroundImage {
            self.inputBackgroundImage = inputBackgroundImage
        }
    }


    /// The image to use as an input image. For filters that also use a background image, this is the foreground image.
    public var inputImage: CIImage? {
        get {
            return valueForKey("inputImage") as? CIImage
        }
        set {
            setValue(newValue, forKey: "inputImage")
        }
    }

    /// The image to use as a background image.
    public var inputBackgroundImage: CIImage? {
        get {
            return valueForKey("inputBackgroundImage") as? CIImage
        }
        set {
            setValue(newValue, forKey: "inputBackgroundImage")
        }
    }
}

/**
Places the source image over the background image, then uses the luminance of the background image to determine what to show. The composite shows the background image and only those portions of the source image that are over visible parts of the background.

[More Information](http: //developer.apple.com/cgi-bin/apple_ref.cgi?apple_ref=//apple_ref/doc/filter/ci/CISourceAtopCompositing)
*/
public class SourceAtopCompositing: Filter {

    let name = "CISourceAtopCompositing"

    public init(inputImage: CIImage? = nil, inputBackgroundImage: CIImage? = nil) {
        super.init(name: "CISourceAtopCompositing")

        if let inputImage = inputImage {
            self.inputImage = inputImage
        }
        if let inputBackgroundImage = inputBackgroundImage {
            self.inputBackgroundImage = inputBackgroundImage
        }
    }


    /// The image to use as an input image. For filters that also use a background image, this is the foreground image.
    public var inputImage: CIImage? {
        get {
            return valueForKey("inputImage") as? CIImage
        }
        set {
            setValue(newValue, forKey: "inputImage")
        }
    }

    /// The image to use as a background image.
    public var inputBackgroundImage: CIImage? {
        get {
            return valueForKey("inputBackgroundImage") as? CIImage
        }
        set {
            setValue(newValue, forKey: "inputBackgroundImage")
        }
    }
}

/**
Uses the second image to define what to leave in the source image, effectively cropping the image.

[More Information](http: //developer.apple.com/cgi-bin/apple_ref.cgi?apple_ref=//apple_ref/doc/filter/ci/CISourceInCompositing)
*/
public class SourceInCompositing: Filter {

    let name = "CISourceInCompositing"

    public init(inputImage: CIImage? = nil, inputBackgroundImage: CIImage? = nil) {
        super.init(name: "CISourceInCompositing")

        if let inputImage = inputImage {
            self.inputImage = inputImage
        }
        if let inputBackgroundImage = inputBackgroundImage {
            self.inputBackgroundImage = inputBackgroundImage
        }
    }


    /// The image to use as an input image. For filters that also use a background image, this is the foreground image.
    public var inputImage: CIImage? {
        get {
            return valueForKey("inputImage") as? CIImage
        }
        set {
            setValue(newValue, forKey: "inputImage")
        }
    }

    /// The image to use as a background image.
    public var inputBackgroundImage: CIImage? {
        get {
            return valueForKey("inputBackgroundImage") as? CIImage
        }
        set {
            setValue(newValue, forKey: "inputBackgroundImage")
        }
    }
}

/**
Uses the second image to define what to take out of the first image.

[More Information](http: //developer.apple.com/cgi-bin/apple_ref.cgi?apple_ref=//apple_ref/doc/filter/ci/CISourceOutCompositing)
*/
public class SourceOutCompositing: Filter {

    let name = "CISourceOutCompositing"

    public init(inputImage: CIImage? = nil, inputBackgroundImage: CIImage? = nil) {
        super.init(name: "CISourceOutCompositing")

        if let inputImage = inputImage {
            self.inputImage = inputImage
        }
        if let inputBackgroundImage = inputBackgroundImage {
            self.inputBackgroundImage = inputBackgroundImage
        }
    }


    /// The image to use as an input image. For filters that also use a background image, this is the foreground image.
    public var inputImage: CIImage? {
        get {
            return valueForKey("inputImage") as? CIImage
        }
        set {
            setValue(newValue, forKey: "inputImage")
        }
    }

    /// The image to use as a background image.
    public var inputBackgroundImage: CIImage? {
        get {
            return valueForKey("inputBackgroundImage") as? CIImage
        }
        set {
            setValue(newValue, forKey: "inputBackgroundImage")
        }
    }
}

/**
Places the second image over the first.

[More Information](http: //developer.apple.com/cgi-bin/apple_ref.cgi?apple_ref=//apple_ref/doc/filter/ci/CISourceOverCompositing)
*/
public class SourceOverCompositing: Filter {

    let name = "CISourceOverCompositing"

    public init(inputImage: CIImage? = nil, inputBackgroundImage: CIImage? = nil) {
        super.init(name: "CISourceOverCompositing")

        if let inputImage = inputImage {
            self.inputImage = inputImage
        }
        if let inputBackgroundImage = inputBackgroundImage {
            self.inputBackgroundImage = inputBackgroundImage
        }
    }


    /// The image to use as an input image. For filters that also use a background image, this is the foreground image.
    public var inputImage: CIImage? {
        get {
            return valueForKey("inputImage") as? CIImage
        }
        set {
            setValue(newValue, forKey: "inputImage")
        }
    }

    /// The image to use as a background image.
    public var inputBackgroundImage: CIImage? {
        get {
            return valueForKey("inputBackgroundImage") as? CIImage
        }
        set {
            setValue(newValue, forKey: "inputBackgroundImage")
        }
    }
}

/**
Replaces one or more color ranges with spot colors.

[More Information](http: //developer.apple.com/cgi-bin/apple_ref.cgi?apple_ref=//apple_ref/doc/filter/ci/CISpotColor)
*/
public class SpotColor: Filter {

    let name = "CISpotColor"

    public init(inputImage: CIImage? = nil, inputCenterColor1: CIColor? = nil, inputReplacementColor1: CIColor? = nil, inputCloseness1: CGFloat? = nil, inputContrast1: CGFloat? = nil, inputCenterColor2: CIColor? = nil, inputReplacementColor2: CIColor? = nil, inputCloseness2: CGFloat? = nil, inputContrast2: CGFloat? = nil, inputCenterColor3: CIColor? = nil, inputReplacementColor3: CIColor? = nil, inputCloseness3: CGFloat? = nil, inputContrast3: CGFloat? = nil) {
        super.init(name: "CISpotColor")

        if let inputImage = inputImage {
            self.inputImage = inputImage
        }
        if let inputCenterColor1 = inputCenterColor1 {
            self.inputCenterColor1 = inputCenterColor1
        }
        if let inputReplacementColor1 = inputReplacementColor1 {
            self.inputReplacementColor1 = inputReplacementColor1
        }
        if let inputCloseness1 = inputCloseness1 {
            self.inputCloseness1 = inputCloseness1
        }
        if let inputContrast1 = inputContrast1 {
            self.inputContrast1 = inputContrast1
        }
        if let inputCenterColor2 = inputCenterColor2 {
            self.inputCenterColor2 = inputCenterColor2
        }
        if let inputReplacementColor2 = inputReplacementColor2 {
            self.inputReplacementColor2 = inputReplacementColor2
        }
        if let inputCloseness2 = inputCloseness2 {
            self.inputCloseness2 = inputCloseness2
        }
        if let inputContrast2 = inputContrast2 {
            self.inputContrast2 = inputContrast2
        }
        if let inputCenterColor3 = inputCenterColor3 {
            self.inputCenterColor3 = inputCenterColor3
        }
        if let inputReplacementColor3 = inputReplacementColor3 {
            self.inputReplacementColor3 = inputReplacementColor3
        }
        if let inputCloseness3 = inputCloseness3 {
            self.inputCloseness3 = inputCloseness3
        }
        if let inputContrast3 = inputContrast3 {
            self.inputContrast3 = inputContrast3
        }
    }


    /// The image to use as an input image. For filters that also use a background image, this is the foreground image.
    public var inputImage: CIImage? {
        get {
            return valueForKey("inputImage") as? CIImage
        }
        set {
            setValue(newValue, forKey: "inputImage")
        }
    }

    /// The center value of the first color range to replace.
    public var inputCenterColor1: CIColor? {
        get {
            return valueForKey("inputCenterColor1") as? CIColor
        }
        set {
            setValue(newValue, forKey: "inputCenterColor1")
        }
    }

    /// A replacement color for the first color range.
    public var inputReplacementColor1: CIColor? {
        get {
            return valueForKey("inputReplacementColor1") as? CIColor
        }
        set {
            setValue(newValue, forKey: "inputReplacementColor1")
        }
    }

    /// A value that indicates how close the first color must match before it is replaced.
    public var inputCloseness1: CGFloat? {
        get {
            return valueForKey("inputCloseness1") as? CGFloat
        }
        set {
            setValue(newValue, forKey: "inputCloseness1")
        }
    }

    /// The contrast of the first replacement color.
    public var inputContrast1: CGFloat? {
        get {
            return valueForKey("inputContrast1") as? CGFloat
        }
        set {
            setValue(newValue, forKey: "inputContrast1")
        }
    }

    /// The center value of the second color range to replace.
    public var inputCenterColor2: CIColor? {
        get {
            return valueForKey("inputCenterColor2") as? CIColor
        }
        set {
            setValue(newValue, forKey: "inputCenterColor2")
        }
    }

    /// A replacement color for the second color range.
    public var inputReplacementColor2: CIColor? {
        get {
            return valueForKey("inputReplacementColor2") as? CIColor
        }
        set {
            setValue(newValue, forKey: "inputReplacementColor2")
        }
    }

    /// A value that indicates how close the second color must match before it is replaced.
    public var inputCloseness2: CGFloat? {
        get {
            return valueForKey("inputCloseness2") as? CGFloat
        }
        set {
            setValue(newValue, forKey: "inputCloseness2")
        }
    }

    /// The contrast of the second replacement color.
    public var inputContrast2: CGFloat? {
        get {
            return valueForKey("inputContrast2") as? CGFloat
        }
        set {
            setValue(newValue, forKey: "inputContrast2")
        }
    }

    /// The center value of the third color range to replace.
    public var inputCenterColor3: CIColor? {
        get {
            return valueForKey("inputCenterColor3") as? CIColor
        }
        set {
            setValue(newValue, forKey: "inputCenterColor3")
        }
    }

    /// A replacement color for the third color range.
    public var inputReplacementColor3: CIColor? {
        get {
            return valueForKey("inputReplacementColor3") as? CIColor
        }
        set {
            setValue(newValue, forKey: "inputReplacementColor3")
        }
    }

    /// A value that indicates how close the third color must match before it is replaced.
    public var inputCloseness3: CGFloat? {
        get {
            return valueForKey("inputCloseness3") as? CGFloat
        }
        set {
            setValue(newValue, forKey: "inputCloseness3")
        }
    }

    /// The contrast of the third replacement color.
    public var inputContrast3: CGFloat? {
        get {
            return valueForKey("inputContrast3") as? CGFloat
        }
        set {
            setValue(newValue, forKey: "inputContrast3")
        }
    }
}

/**
Applies a directional spotlight effect to an image.

[More Information](http: //developer.apple.com/cgi-bin/apple_ref.cgi?apple_ref=//apple_ref/doc/filter/ci/CISpotLight)
*/
public class SpotLight: Filter {

    let name = "CISpotLight"

    public init(inputImage: CIImage? = nil, inputLightPosition: CIVector? = nil, inputLightPointsAt: CIVector? = nil, inputBrightness: CGFloat? = nil, inputConcentration: CGFloat? = nil, inputColor: CIColor? = nil) {
        super.init(name: "CISpotLight")

        if let inputImage = inputImage {
            self.inputImage = inputImage
        }
        if let inputLightPosition = inputLightPosition {
            self.inputLightPosition = inputLightPosition
        }
        if let inputLightPointsAt = inputLightPointsAt {
            self.inputLightPointsAt = inputLightPointsAt
        }
        if let inputBrightness = inputBrightness {
            self.inputBrightness = inputBrightness
        }
        if let inputConcentration = inputConcentration {
            self.inputConcentration = inputConcentration
        }
        if let inputColor = inputColor {
            self.inputColor = inputColor
        }
    }


    /// The image to use as an input image. For filters that also use a background image, this is the foreground image.
    public var inputImage: CIImage? {
        get {
            return valueForKey("inputImage") as? CIImage
        }
        set {
            setValue(newValue, forKey: "inputImage")
        }
    }

    /// The x and y position of the spotlight.
    public var inputLightPosition: CIVector? {
        get {
            return valueForKey("inputLightPosition") as? CIVector
        }
        set {
            setValue(newValue, forKey: "inputLightPosition")
        }
    }

    /// The x and y position that the spotlight points at.
    public var inputLightPointsAt: CIVector? {
        get {
            return valueForKey("inputLightPointsAt") as? CIVector
        }
        set {
            setValue(newValue, forKey: "inputLightPointsAt")
        }
    }

    /// The brightness of the spotlight.
    public var inputBrightness: CGFloat? {
        get {
            return valueForKey("inputBrightness") as? CGFloat
        }
        set {
            setValue(newValue, forKey: "inputBrightness")
        }
    }

    /// The spotlight size. The smaller the value, the more tightly focused the light beam.
    public var inputConcentration: CGFloat? {
        get {
            return valueForKey("inputConcentration") as? CGFloat
        }
        set {
            setValue(newValue, forKey: "inputConcentration")
        }
    }

    /// The color of the spotlight.
    public var inputColor: CIColor? {
        get {
            return valueForKey("inputColor") as? CIColor
        }
        set {
            setValue(newValue, forKey: "inputColor")
        }
    }
}

/**
Converts an image in sRGB space to linear space.

[More Information](http: //developer.apple.com/cgi-bin/apple_ref.cgi?apple_ref=//apple_ref/doc/filter/ci/CISRGBToneCurveToLinear)
*/
public class SRGBToneCurveToLinear: Filter {

    let name = "CISRGBToneCurveToLinear"

    public init(inputImage: CIImage? = nil) {
        super.init(name: "CISRGBToneCurveToLinear")

        if let inputImage = inputImage {
            self.inputImage = inputImage
        }
    }


    /// The image to use as an input image. For filters that also use a background image, this is the foreground image.
    public var inputImage: CIImage? {
        get {
            return valueForKey("inputImage") as? CIImage
        }
        set {
            setValue(newValue, forKey: "inputImage")
        }
    }
}

/**
Generates a starburst pattern. The output image is typically used as input to another filter

[More Information](http: //developer.apple.com/cgi-bin/apple_ref.cgi?apple_ref=//apple_ref/doc/filter/ci/CIStarShineGenerator)
*/
public class StarShineGenerator: Filter {

    let name = "CIStarShineGenerator"

    public init(inputCenter: CIVector? = nil, inputColor: CIColor? = nil, inputRadius: CGFloat? = nil, inputCrossScale: CGFloat? = nil, inputCrossAngle: CGFloat? = nil, inputCrossOpacity: CGFloat? = nil, inputCrossWidth: CGFloat? = nil, inputEpsilon: CGFloat? = nil) {
        super.init(name: "CIStarShineGenerator")

        if let inputCenter = inputCenter {
            self.inputCenter = inputCenter
        }
        if let inputColor = inputColor {
            self.inputColor = inputColor
        }
        if let inputRadius = inputRadius {
            self.inputRadius = inputRadius
        }
        if let inputCrossScale = inputCrossScale {
            self.inputCrossScale = inputCrossScale
        }
        if let inputCrossAngle = inputCrossAngle {
            self.inputCrossAngle = inputCrossAngle
        }
        if let inputCrossOpacity = inputCrossOpacity {
            self.inputCrossOpacity = inputCrossOpacity
        }
        if let inputCrossWidth = inputCrossWidth {
            self.inputCrossWidth = inputCrossWidth
        }
        if let inputEpsilon = inputEpsilon {
            self.inputEpsilon = inputEpsilon
        }
    }


    /// The  x and y position to use as the center of the star.
    public var inputCenter: CIVector? {
        get {
            return valueForKey("inputCenter") as? CIVector
        }
        set {
            setValue(newValue, forKey: "inputCenter")
        }
    }

    /// The color to use for the outer shell of the circular star.
    public var inputColor: CIColor? {
        get {
            return valueForKey("inputColor") as? CIColor
        }
        set {
            setValue(newValue, forKey: "inputColor")
        }
    }

    /// The radius of the star.
    public var inputRadius: CGFloat? {
        get {
            return valueForKey("inputRadius") as? CGFloat
        }
        set {
            setValue(newValue, forKey: "inputRadius")
        }
    }

    /// The size of the cross pattern.
    public var inputCrossScale: CGFloat? {
        get {
            return valueForKey("inputCrossScale") as? CGFloat
        }
        set {
            setValue(newValue, forKey: "inputCrossScale")
        }
    }

    /// The angle of the cross pattern.
    public var inputCrossAngle: CGFloat? {
        get {
            return valueForKey("inputCrossAngle") as? CGFloat
        }
        set {
            setValue(newValue, forKey: "inputCrossAngle")
        }
    }

    /// The opacity of the cross pattern.
    public var inputCrossOpacity: CGFloat? {
        get {
            return valueForKey("inputCrossOpacity") as? CGFloat
        }
        set {
            setValue(newValue, forKey: "inputCrossOpacity")
        }
    }

    /// The width of the cross pattern.
    public var inputCrossWidth: CGFloat? {
        get {
            return valueForKey("inputCrossWidth") as? CGFloat
        }
        set {
            setValue(newValue, forKey: "inputCrossWidth")
        }
    }

    /// The length of the cross spikes.
    public var inputEpsilon: CGFloat? {
        get {
            return valueForKey("inputEpsilon") as? CGFloat
        }
        set {
            setValue(newValue, forKey: "inputEpsilon")
        }
    }
}

/**
Rotates a source image by the specified angle in radians. The image is then scaled and cropped so that the rotated image fits the extent of the input image.

[More Information](http: //developer.apple.com/cgi-bin/apple_ref.cgi?apple_ref=//apple_ref/doc/filter/ci/CIStraightenFilter)
*/
public class StraightenFilter: Filter {

    let name = "CIStraightenFilter"

    public init(inputImage: CIImage? = nil, inputAngle: CGFloat? = nil) {
        super.init(name: "CIStraightenFilter")

        if let inputImage = inputImage {
            self.inputImage = inputImage
        }
        if let inputAngle = inputAngle {
            self.inputAngle = inputAngle
        }
    }


    /// The image to use as an input image. For filters that also use a background image, this is the foreground image.
    public var inputImage: CIImage? {
        get {
            return valueForKey("inputImage") as? CIImage
        }
        set {
            setValue(newValue, forKey: "inputImage")
        }
    }

    /// An angle in radians.
    public var inputAngle: CGFloat? {
        get {
            return valueForKey("inputAngle") as? CGFloat
        }
        set {
            setValue(newValue, forKey: "inputAngle")
        }
    }
}

/**
Distorts an image by stretching and or cropping to fit a target size.

[More Information](http: //developer.apple.com/cgi-bin/apple_ref.cgi?apple_ref=//apple_ref/doc/filter/ci/CIStretchCrop)
*/
public class StretchCrop: Filter {

    let name = "CIStretchCrop"

    public init(inputImage: CIImage? = nil, inputSize: CIVector? = nil, inputCropAmount: CGFloat? = nil, inputCenterStretchAmount: CGFloat? = nil) {
        super.init(name: "CIStretchCrop")

        if let inputImage = inputImage {
            self.inputImage = inputImage
        }
        if let inputSize = inputSize {
            self.inputSize = inputSize
        }
        if let inputCropAmount = inputCropAmount {
            self.inputCropAmount = inputCropAmount
        }
        if let inputCenterStretchAmount = inputCenterStretchAmount {
            self.inputCenterStretchAmount = inputCenterStretchAmount
        }
    }


    /// The image to use as an input image. For filters that also use a background image, this is the foreground image.
    public var inputImage: CIImage? {
        get {
            return valueForKey("inputImage") as? CIImage
        }
        set {
            setValue(newValue, forKey: "inputImage")
        }
    }

    /// The size in pixels of the output image.
    public var inputSize: CIVector? {
        get {
            return valueForKey("inputSize") as? CIVector
        }
        set {
            setValue(newValue, forKey: "inputSize")
        }
    }

    /// Determines if and how much cropping should be used to achieve the target size. If value is 0 then only stretching is used.  If 1 then only cropping is used.
    public var inputCropAmount: CGFloat? {
        get {
            return valueForKey("inputCropAmount") as? CGFloat
        }
        set {
            setValue(newValue, forKey: "inputCropAmount")
        }
    }

    /// Determine how much the center of the image is stretched if stretching is used. If value is 0 then the center of the image maintains the original aspect ratio.  If 1 then the image is stretched uniformly.
    public var inputCenterStretchAmount: CGFloat? {
        get {
            return valueForKey("inputCenterStretchAmount") as? CGFloat
        }
        set {
            setValue(newValue, forKey: "inputCenterStretchAmount")
        }
    }
}

/**
Generates a stripe pattern. You can control the color of the stripes, the spacing, and the contrast.

[More Information](http: //developer.apple.com/cgi-bin/apple_ref.cgi?apple_ref=//apple_ref/doc/filter/ci/CIStripesGenerator)
*/
public class StripesGenerator: Filter {

    let name = "CIStripesGenerator"

    public init(inputCenter: CIVector? = nil, inputColor0: CIColor? = nil, inputColor1: CIColor? = nil, inputWidth: CGFloat? = nil, inputSharpness: CGFloat? = nil) {
        super.init(name: "CIStripesGenerator")

        if let inputCenter = inputCenter {
            self.inputCenter = inputCenter
        }
        if let inputColor0 = inputColor0 {
            self.inputColor0 = inputColor0
        }
        if let inputColor1 = inputColor1 {
            self.inputColor1 = inputColor1
        }
        if let inputWidth = inputWidth {
            self.inputWidth = inputWidth
        }
        if let inputSharpness = inputSharpness {
            self.inputSharpness = inputSharpness
        }
    }


    /// The x and y position to use as the center of the stripe pattern.
    public var inputCenter: CIVector? {
        get {
            return valueForKey("inputCenter") as? CIVector
        }
        set {
            setValue(newValue, forKey: "inputCenter")
        }
    }

    /// A color to use for the odd stripes.
    public var inputColor0: CIColor? {
        get {
            return valueForKey("inputColor0") as? CIColor
        }
        set {
            setValue(newValue, forKey: "inputColor0")
        }
    }

    /// A color to use for the even stripes.
    public var inputColor1: CIColor? {
        get {
            return valueForKey("inputColor1") as? CIColor
        }
        set {
            setValue(newValue, forKey: "inputColor1")
        }
    }

    /// The width of a stripe.
    public var inputWidth: CGFloat? {
        get {
            return valueForKey("inputWidth") as? CGFloat
        }
        set {
            setValue(newValue, forKey: "inputWidth")
        }
    }

    /// The sharpness of the stripe pattern. The smaller the value, the more blurry the pattern. Values range from 0.0 to 1.0.
    public var inputSharpness: CGFloat? {
        get {
            return valueForKey("inputSharpness") as? CGFloat
        }
        set {
            setValue(newValue, forKey: "inputSharpness")
        }
    }
}

/**
Subtract Blend Mode

[More Information](http: //developer.apple.com/cgi-bin/apple_ref.cgi?apple_ref=//apple_ref/doc/filter/ci/CISubtractBlendMode)
*/
public class SubtractBlendMode: Filter {

    let name = "CISubtractBlendMode"

    public init(inputImage: CIImage? = nil, inputBackgroundImage: CIImage? = nil) {
        super.init(name: "CISubtractBlendMode")

        if let inputImage = inputImage {
            self.inputImage = inputImage
        }
        if let inputBackgroundImage = inputBackgroundImage {
            self.inputBackgroundImage = inputBackgroundImage
        }
    }


    /// The image to use as an input image. For filters that also use a background image, this is the foreground image.
    public var inputImage: CIImage? {
        get {
            return valueForKey("inputImage") as? CIImage
        }
        set {
            setValue(newValue, forKey: "inputImage")
        }
    }

    /// The image to use as a background image.
    public var inputBackgroundImage: CIImage? {
        get {
            return valueForKey("inputBackgroundImage") as? CIImage
        }
        set {
            setValue(newValue, forKey: "inputBackgroundImage")
        }
    }
}

/**
Generates a sun effect. You typically use the output of the sunbeams filter as input to a composite filter.

[More Information](http: //developer.apple.com/cgi-bin/apple_ref.cgi?apple_ref=//apple_ref/doc/filter/ci/CISunbeamsGenerator)
*/
public class SunbeamsGenerator: Filter {

    let name = "CISunbeamsGenerator"

    public init(inputCenter: CIVector? = nil, inputColor: CIColor? = nil, inputSunRadius: CGFloat? = nil, inputMaxStriationRadius: CGFloat? = nil, inputStriationStrength: CGFloat? = nil, inputStriationContrast: CGFloat? = nil, inputTime: CGFloat? = nil) {
        super.init(name: "CISunbeamsGenerator")

        if let inputCenter = inputCenter {
            self.inputCenter = inputCenter
        }
        if let inputColor = inputColor {
            self.inputColor = inputColor
        }
        if let inputSunRadius = inputSunRadius {
            self.inputSunRadius = inputSunRadius
        }
        if let inputMaxStriationRadius = inputMaxStriationRadius {
            self.inputMaxStriationRadius = inputMaxStriationRadius
        }
        if let inputStriationStrength = inputStriationStrength {
            self.inputStriationStrength = inputStriationStrength
        }
        if let inputStriationContrast = inputStriationContrast {
            self.inputStriationContrast = inputStriationContrast
        }
        if let inputTime = inputTime {
            self.inputTime = inputTime
        }
    }


    /// The  x and y position to use as the center of the sunbeam pattern
    public var inputCenter: CIVector? {
        get {
            return valueForKey("inputCenter") as? CIVector
        }
        set {
            setValue(newValue, forKey: "inputCenter")
        }
    }

    /// The color of the sun.
    public var inputColor: CIColor? {
        get {
            return valueForKey("inputColor") as? CIColor
        }
        set {
            setValue(newValue, forKey: "inputColor")
        }
    }

    /// The radius of the sun.
    public var inputSunRadius: CGFloat? {
        get {
            return valueForKey("inputSunRadius") as? CGFloat
        }
        set {
            setValue(newValue, forKey: "inputSunRadius")
        }
    }

    /// The radius of the sunbeams.
    public var inputMaxStriationRadius: CGFloat? {
        get {
            return valueForKey("inputMaxStriationRadius") as? CGFloat
        }
        set {
            setValue(newValue, forKey: "inputMaxStriationRadius")
        }
    }

    /// The intensity of the sunbeams. Higher values result in more intensity.
    public var inputStriationStrength: CGFloat? {
        get {
            return valueForKey("inputStriationStrength") as? CGFloat
        }
        set {
            setValue(newValue, forKey: "inputStriationStrength")
        }
    }

    /// The contrast of the sunbeams. Higher values result in more contrast.
    public var inputStriationContrast: CGFloat? {
        get {
            return valueForKey("inputStriationContrast") as? CGFloat
        }
        set {
            setValue(newValue, forKey: "inputStriationContrast")
        }
    }

    /// The duration of the effect.
    public var inputTime: CGFloat? {
        get {
            return valueForKey("inputTime") as? CGFloat
        }
        set {
            setValue(newValue, forKey: "inputTime")
        }
    }
}

/**
Transitions from one image to another by simulating a swiping action.

[More Information](http: //developer.apple.com/cgi-bin/apple_ref.cgi?apple_ref=//apple_ref/doc/filter/ci/CISwipeTransition)
*/
public class SwipeTransition: Filter {

    let name = "CISwipeTransition"

    public init(inputImage: CIImage? = nil, inputTargetImage: CIImage? = nil, inputExtent: CIVector? = nil, inputColor: CIColor? = nil, inputTime: CGFloat? = nil, inputAngle: CGFloat? = nil, inputWidth: CGFloat? = nil, inputOpacity: CGFloat? = nil) {
        super.init(name: "CISwipeTransition")

        if let inputImage = inputImage {
            self.inputImage = inputImage
        }
        if let inputTargetImage = inputTargetImage {
            self.inputTargetImage = inputTargetImage
        }
        if let inputExtent = inputExtent {
            self.inputExtent = inputExtent
        }
        if let inputColor = inputColor {
            self.inputColor = inputColor
        }
        if let inputTime = inputTime {
            self.inputTime = inputTime
        }
        if let inputAngle = inputAngle {
            self.inputAngle = inputAngle
        }
        if let inputWidth = inputWidth {
            self.inputWidth = inputWidth
        }
        if let inputOpacity = inputOpacity {
            self.inputOpacity = inputOpacity
        }
    }


    /// The image to use as an input image. For filters that also use a background image, this is the foreground image.
    public var inputImage: CIImage? {
        get {
            return valueForKey("inputImage") as? CIImage
        }
        set {
            setValue(newValue, forKey: "inputImage")
        }
    }

    /// The target image for a transition.
    public var inputTargetImage: CIImage? {
        get {
            return valueForKey("inputTargetImage") as? CIImage
        }
        set {
            setValue(newValue, forKey: "inputTargetImage")
        }
    }

    /// The extent of the effect.
    public var inputExtent: CIVector? {
        get {
            return valueForKey("inputExtent") as? CIVector
        }
        set {
            setValue(newValue, forKey: "inputExtent")
        }
    }

    /// The color of the swipe.
    public var inputColor: CIColor? {
        get {
            return valueForKey("inputColor") as? CIColor
        }
        set {
            setValue(newValue, forKey: "inputColor")
        }
    }

    /// The parametric time of the transition. This value drives the transition from start (at time 0) to end (at time 1).
    public var inputTime: CGFloat? {
        get {
            return valueForKey("inputTime") as? CGFloat
        }
        set {
            setValue(newValue, forKey: "inputTime")
        }
    }

    /// The angle of the swipe.
    public var inputAngle: CGFloat? {
        get {
            return valueForKey("inputAngle") as? CGFloat
        }
        set {
            setValue(newValue, forKey: "inputAngle")
        }
    }

    /// The width of the swipe
    public var inputWidth: CGFloat? {
        get {
            return valueForKey("inputWidth") as? CGFloat
        }
        set {
            setValue(newValue, forKey: "inputWidth")
        }
    }

    /// The opacity of the swipe.
    public var inputOpacity: CGFloat? {
        get {
            return valueForKey("inputOpacity") as? CGFloat
        }
        set {
            setValue(newValue, forKey: "inputOpacity")
        }
    }
}

/**
Adapt the reference white point for an image.

[More Information](http: //developer.apple.com/cgi-bin/apple_ref.cgi?apple_ref=//apple_ref/doc/filter/ci/CITemperatureAndTint)
*/
public class TemperatureAndTint: Filter {

    let name = "CITemperatureAndTint"

    public init(inputImage: CIImage? = nil, inputNeutral: CIVector? = nil, inputTargetNeutral: CIVector? = nil) {
        super.init(name: "CITemperatureAndTint")

        if let inputImage = inputImage {
            self.inputImage = inputImage
        }
        if let inputNeutral = inputNeutral {
            self.inputNeutral = inputNeutral
        }
        if let inputTargetNeutral = inputTargetNeutral {
            self.inputTargetNeutral = inputTargetNeutral
        }
    }


    /// The image to use as an input image. For filters that also use a background image, this is the foreground image.
    public var inputImage: CIImage? {
        get {
            return valueForKey("inputImage") as? CIImage
        }
        set {
            setValue(newValue, forKey: "inputImage")
        }
    }

    public var inputNeutral: CIVector? {
        get {
            return valueForKey("inputNeutral") as? CIVector
        }
        set {
            setValue(newValue, forKey: "inputNeutral")
        }
    }

    public var inputTargetNeutral: CIVector? {
        get {
            return valueForKey("inputTargetNeutral") as? CIVector
        }
        set {
            setValue(newValue, forKey: "inputTargetNeutral")
        }
    }
}

/**
Adjusts tone response of the R, G, and B channels of an image. The input points are five x,y values that are interpolated using a spline curve.  The curve is applied in a perceptual (gamma 2) version of the working space.

[More Information](http: //developer.apple.com/cgi-bin/apple_ref.cgi?apple_ref=//apple_ref/doc/filter/ci/CIToneCurve)
*/
public class ToneCurve: Filter {

    let name = "CIToneCurve"

    public init(inputImage: CIImage? = nil, inputPoint0: CIVector? = nil, inputPoint1: CIVector? = nil, inputPoint2: CIVector? = nil, inputPoint3: CIVector? = nil, inputPoint4: CIVector? = nil) {
        super.init(name: "CIToneCurve")

        if let inputImage = inputImage {
            self.inputImage = inputImage
        }
        if let inputPoint0 = inputPoint0 {
            self.inputPoint0 = inputPoint0
        }
        if let inputPoint1 = inputPoint1 {
            self.inputPoint1 = inputPoint1
        }
        if let inputPoint2 = inputPoint2 {
            self.inputPoint2 = inputPoint2
        }
        if let inputPoint3 = inputPoint3 {
            self.inputPoint3 = inputPoint3
        }
        if let inputPoint4 = inputPoint4 {
            self.inputPoint4 = inputPoint4
        }
    }


    /// The image to use as an input image. For filters that also use a background image, this is the foreground image.
    public var inputImage: CIImage? {
        get {
            return valueForKey("inputImage") as? CIImage
        }
        set {
            setValue(newValue, forKey: "inputImage")
        }
    }

    public var inputPoint0: CIVector? {
        get {
            return valueForKey("inputPoint0") as? CIVector
        }
        set {
            setValue(newValue, forKey: "inputPoint0")
        }
    }

    public var inputPoint1: CIVector? {
        get {
            return valueForKey("inputPoint1") as? CIVector
        }
        set {
            setValue(newValue, forKey: "inputPoint1")
        }
    }

    public var inputPoint2: CIVector? {
        get {
            return valueForKey("inputPoint2") as? CIVector
        }
        set {
            setValue(newValue, forKey: "inputPoint2")
        }
    }

    public var inputPoint3: CIVector? {
        get {
            return valueForKey("inputPoint3") as? CIVector
        }
        set {
            setValue(newValue, forKey: "inputPoint3")
        }
    }

    public var inputPoint4: CIVector? {
        get {
            return valueForKey("inputPoint4") as? CIVector
        }
        set {
            setValue(newValue, forKey: "inputPoint4")
        }
    }
}

/**
Creates a torus-shaped lens and distorts the portion of the image over which the lens is placed.

[More Information](http: //developer.apple.com/cgi-bin/apple_ref.cgi?apple_ref=//apple_ref/doc/filter/ci/CITorusLensDistortion)
*/
public class TorusLensDistortion: Filter {

    let name = "CITorusLensDistortion"

    public init(inputImage: CIImage? = nil, inputCenter: CIVector? = nil, inputRadius: CGFloat? = nil, inputWidth: CGFloat? = nil, inputRefraction: CGFloat? = nil) {
        super.init(name: "CITorusLensDistortion")

        if let inputImage = inputImage {
            self.inputImage = inputImage
        }
        if let inputCenter = inputCenter {
            self.inputCenter = inputCenter
        }
        if let inputRadius = inputRadius {
            self.inputRadius = inputRadius
        }
        if let inputWidth = inputWidth {
            self.inputWidth = inputWidth
        }
        if let inputRefraction = inputRefraction {
            self.inputRefraction = inputRefraction
        }
    }


    /// The image to use as an input image. For filters that also use a background image, this is the foreground image.
    public var inputImage: CIImage? {
        get {
            return valueForKey("inputImage") as? CIImage
        }
        set {
            setValue(newValue, forKey: "inputImage")
        }
    }

    /// The x and y position to use as the center of the torus.
    public var inputCenter: CIVector? {
        get {
            return valueForKey("inputCenter") as? CIVector
        }
        set {
            setValue(newValue, forKey: "inputCenter")
        }
    }

    /// The outer radius of the torus.
    public var inputRadius: CGFloat? {
        get {
            return valueForKey("inputRadius") as? CGFloat
        }
        set {
            setValue(newValue, forKey: "inputRadius")
        }
    }

    /// The width of the ring.
    public var inputWidth: CGFloat? {
        get {
            return valueForKey("inputWidth") as? CGFloat
        }
        set {
            setValue(newValue, forKey: "inputWidth")
        }
    }

    /// The refraction of the glass.
    public var inputRefraction: CGFloat? {
        get {
            return valueForKey("inputRefraction") as? CGFloat
        }
        set {
            setValue(newValue, forKey: "inputRefraction")
        }
    }
}

/**
Triangle Kaleidoscope

[More Information](http: //developer.apple.com/cgi-bin/apple_ref.cgi?apple_ref=//apple_ref/doc/filter/ci/CITriangleKaleidoscope)
*/
public class TriangleKaleidoscope: Filter {

    let name = "CITriangleKaleidoscope"

    public init(inputImage: CIImage? = nil, inputPoint: CIVector? = nil, inputSize: CGFloat? = nil, inputRotation: CGFloat? = nil, inputDecay: CGFloat? = nil) {
        super.init(name: "CITriangleKaleidoscope")

        if let inputImage = inputImage {
            self.inputImage = inputImage
        }
        if let inputPoint = inputPoint {
            self.inputPoint = inputPoint
        }
        if let inputSize = inputSize {
            self.inputSize = inputSize
        }
        if let inputRotation = inputRotation {
            self.inputRotation = inputRotation
        }
        if let inputDecay = inputDecay {
            self.inputDecay = inputDecay
        }
    }


    /// The image to use as an input image. For filters that also use a background image, this is the foreground image.
    public var inputImage: CIImage? {
        get {
            return valueForKey("inputImage") as? CIImage
        }
        set {
            setValue(newValue, forKey: "inputImage")
        }
    }

    public var inputPoint: CIVector? {
        get {
            return valueForKey("inputPoint") as? CIVector
        }
        set {
            setValue(newValue, forKey: "inputPoint")
        }
    }

    public var inputSize: CGFloat? {
        get {
            return valueForKey("inputSize") as? CGFloat
        }
        set {
            setValue(newValue, forKey: "inputSize")
        }
    }

    public var inputRotation: CGFloat? {
        get {
            return valueForKey("inputRotation") as? CGFloat
        }
        set {
            setValue(newValue, forKey: "inputRotation")
        }
    }

    public var inputDecay: CGFloat? {
        get {
            return valueForKey("inputDecay") as? CGFloat
        }
        set {
            setValue(newValue, forKey: "inputDecay")
        }
    }
}

/**
Maps a triangular portion of image to a triangular area and then tiles the result.

[More Information](http: //developer.apple.com/cgi-bin/apple_ref.cgi?apple_ref=//apple_ref/doc/filter/ci/CITriangleTile)
*/
public class TriangleTile: Filter {

    let name = "CITriangleTile"

    public init(inputImage: CIImage? = nil, inputCenter: CIVector? = nil, inputAngle: CGFloat? = nil, inputWidth: CGFloat? = nil) {
        super.init(name: "CITriangleTile")

        if let inputImage = inputImage {
            self.inputImage = inputImage
        }
        if let inputCenter = inputCenter {
            self.inputCenter = inputCenter
        }
        if let inputAngle = inputAngle {
            self.inputAngle = inputAngle
        }
        if let inputWidth = inputWidth {
            self.inputWidth = inputWidth
        }
    }


    /// The image to use as an input image. For filters that also use a background image, this is the foreground image.
    public var inputImage: CIImage? {
        get {
            return valueForKey("inputImage") as? CIImage
        }
        set {
            setValue(newValue, forKey: "inputImage")
        }
    }

    /// The x and y position to use as the center of the effect
    public var inputCenter: CIVector? {
        get {
            return valueForKey("inputCenter") as? CIVector
        }
        set {
            setValue(newValue, forKey: "inputCenter")
        }
    }

    /// The angle (in radians) of the tiled pattern.
    public var inputAngle: CGFloat? {
        get {
            return valueForKey("inputAngle") as? CGFloat
        }
        set {
            setValue(newValue, forKey: "inputAngle")
        }
    }

    /// The width of a tile.
    public var inputWidth: CGFloat? {
        get {
            return valueForKey("inputWidth") as? CGFloat
        }
        set {
            setValue(newValue, forKey: "inputWidth")
        }
    }
}

/**
Produces a tiled image from a source image by applying a 12-way reflected symmetry.

[More Information](http: //developer.apple.com/cgi-bin/apple_ref.cgi?apple_ref=//apple_ref/doc/filter/ci/CITwelvefoldReflectedTile)
*/
public class TwelvefoldReflectedTile: Filter {

    let name = "CITwelvefoldReflectedTile"

    public init(inputImage: CIImage? = nil, inputCenter: CIVector? = nil, inputAngle: CGFloat? = nil, inputWidth: CGFloat? = nil) {
        super.init(name: "CITwelvefoldReflectedTile")

        if let inputImage = inputImage {
            self.inputImage = inputImage
        }
        if let inputCenter = inputCenter {
            self.inputCenter = inputCenter
        }
        if let inputAngle = inputAngle {
            self.inputAngle = inputAngle
        }
        if let inputWidth = inputWidth {
            self.inputWidth = inputWidth
        }
    }


    /// The image to use as an input image. For filters that also use a background image, this is the foreground image.
    public var inputImage: CIImage? {
        get {
            return valueForKey("inputImage") as? CIImage
        }
        set {
            setValue(newValue, forKey: "inputImage")
        }
    }

    /// The x and y position to use as the center of the effect
    public var inputCenter: CIVector? {
        get {
            return valueForKey("inputCenter") as? CIVector
        }
        set {
            setValue(newValue, forKey: "inputCenter")
        }
    }

    /// The angle (in radians) of the tiled pattern.
    public var inputAngle: CGFloat? {
        get {
            return valueForKey("inputAngle") as? CGFloat
        }
        set {
            setValue(newValue, forKey: "inputAngle")
        }
    }

    /// The width of a tile.
    public var inputWidth: CGFloat? {
        get {
            return valueForKey("inputWidth") as? CGFloat
        }
        set {
            setValue(newValue, forKey: "inputWidth")
        }
    }
}

/**
Rotates pixels around a point to give a twirling effect. You can specify the number of rotations as well as the center and radius of the effect.

[More Information](http: //developer.apple.com/cgi-bin/apple_ref.cgi?apple_ref=//apple_ref/doc/filter/ci/CITwirlDistortion)
*/
public class TwirlDistortion: Filter {

    let name = "CITwirlDistortion"

    public init(inputImage: CIImage? = nil, inputCenter: CIVector? = nil, inputRadius: CGFloat? = nil, inputAngle: CGFloat? = nil) {
        super.init(name: "CITwirlDistortion")

        if let inputImage = inputImage {
            self.inputImage = inputImage
        }
        if let inputCenter = inputCenter {
            self.inputCenter = inputCenter
        }
        if let inputRadius = inputRadius {
            self.inputRadius = inputRadius
        }
        if let inputAngle = inputAngle {
            self.inputAngle = inputAngle
        }
    }


    /// The image to use as an input image. For filters that also use a background image, this is the foreground image.
    public var inputImage: CIImage? {
        get {
            return valueForKey("inputImage") as? CIImage
        }
        set {
            setValue(newValue, forKey: "inputImage")
        }
    }

    /// The center of the effect as x and y coordinates.
    public var inputCenter: CIVector? {
        get {
            return valueForKey("inputCenter") as? CIVector
        }
        set {
            setValue(newValue, forKey: "inputCenter")
        }
    }

    /// The radius determines how many pixels are used to create the distortion. The larger the radius, wider the extent of the distortion.
    public var inputRadius: CGFloat? {
        get {
            return valueForKey("inputRadius") as? CGFloat
        }
        set {
            setValue(newValue, forKey: "inputRadius")
        }
    }

    /// The angle (in radians) of the twirl. Values can be positive or negative.
    public var inputAngle: CGFloat? {
        get {
            return valueForKey("inputAngle") as? CGFloat
        }
        set {
            setValue(newValue, forKey: "inputAngle")
        }
    }
}

/**
Increases the contrast of the edges between pixels of different colors in an image.

[More Information](http: //developer.apple.com/cgi-bin/apple_ref.cgi?apple_ref=//apple_ref/doc/filter/ci/CIUnsharpMask)
*/
public class UnsharpMask: Filter {

    let name = "CIUnsharpMask"

    public init(inputImage: CIImage? = nil, inputRadius: CGFloat? = nil, inputIntensity: CGFloat? = nil) {
        super.init(name: "CIUnsharpMask")

        if let inputImage = inputImage {
            self.inputImage = inputImage
        }
        if let inputRadius = inputRadius {
            self.inputRadius = inputRadius
        }
        if let inputIntensity = inputIntensity {
            self.inputIntensity = inputIntensity
        }
    }


    /// The image to use as an input image. For filters that also use a background image, this is the foreground image.
    public var inputImage: CIImage? {
        get {
            return valueForKey("inputImage") as? CIImage
        }
        set {
            setValue(newValue, forKey: "inputImage")
        }
    }

    /// The radius around a given pixel to apply the unsharp mask. The larger the radius, the more of the image is affected.
    public var inputRadius: CGFloat? {
        get {
            return valueForKey("inputRadius") as? CGFloat
        }
        set {
            setValue(newValue, forKey: "inputRadius")
        }
    }

    /// The intensity of the effect. The larger the value, the more contrast in the affected area.
    public var inputIntensity: CGFloat? {
        get {
            return valueForKey("inputIntensity") as? CGFloat
        }
        set {
            setValue(newValue, forKey: "inputIntensity")
        }
    }
}

/**
Adjusts the saturation of an image while keeping pleasing skin tones.

[More Information](http: //developer.apple.com/cgi-bin/apple_ref.cgi?apple_ref=//apple_ref/doc/filter/ci/CIVibrance)
*/
public class Vibrance: Filter {

    let name = "CIVibrance"

    public init(inputImage: CIImage? = nil, inputAmount: CGFloat? = nil) {
        super.init(name: "CIVibrance")

        if let inputImage = inputImage {
            self.inputImage = inputImage
        }
        if let inputAmount = inputAmount {
            self.inputAmount = inputAmount
        }
    }


    /// The image to use as an input image. For filters that also use a background image, this is the foreground image.
    public var inputImage: CIImage? {
        get {
            return valueForKey("inputImage") as? CIImage
        }
        set {
            setValue(newValue, forKey: "inputImage")
        }
    }

    /// The amount to adjust the saturation.
    public var inputAmount: CGFloat? {
        get {
            return valueForKey("inputAmount") as? CGFloat
        }
        set {
            setValue(newValue, forKey: "inputAmount")
        }
    }
}

/**
Applies a vignette shading to the corners of an image.

[More Information](http: //developer.apple.com/cgi-bin/apple_ref.cgi?apple_ref=//apple_ref/doc/filter/ci/CIVignette)
*/
public class Vignette: Filter {

    let name = "CIVignette"

    public init(inputImage: CIImage? = nil, inputIntensity: CGFloat? = nil, inputRadius: CGFloat? = nil) {
        super.init(name: "CIVignette")

        if let inputImage = inputImage {
            self.inputImage = inputImage
        }
        if let inputIntensity = inputIntensity {
            self.inputIntensity = inputIntensity
        }
        if let inputRadius = inputRadius {
            self.inputRadius = inputRadius
        }
    }


    /// The image to use as an input image. For filters that also use a background image, this is the foreground image.
    public var inputImage: CIImage? {
        get {
            return valueForKey("inputImage") as? CIImage
        }
        set {
            setValue(newValue, forKey: "inputImage")
        }
    }

    /// The intensity of the effect.
    public var inputIntensity: CGFloat? {
        get {
            return valueForKey("inputIntensity") as? CGFloat
        }
        set {
            setValue(newValue, forKey: "inputIntensity")
        }
    }

    /// The distance from the center of the effect.
    public var inputRadius: CGFloat? {
        get {
            return valueForKey("inputRadius") as? CGFloat
        }
        set {
            setValue(newValue, forKey: "inputRadius")
        }
    }
}

/**
Applies a vignette shading to the corners of an image.

[More Information](http: //developer.apple.com/cgi-bin/apple_ref.cgi?apple_ref=//apple_ref/doc/filter/ci/CIVignetteEffect)
*/
public class VignetteEffect: Filter {

    let name = "CIVignetteEffect"

    public init(inputImage: CIImage? = nil, inputCenter: CIVector? = nil, inputRadius: CGFloat? = nil, inputIntensity: CGFloat? = nil, inputFalloff: CGFloat? = nil) {
        super.init(name: "CIVignetteEffect")

        if let inputImage = inputImage {
            self.inputImage = inputImage
        }
        if let inputCenter = inputCenter {
            self.inputCenter = inputCenter
        }
        if let inputRadius = inputRadius {
            self.inputRadius = inputRadius
        }
        if let inputIntensity = inputIntensity {
            self.inputIntensity = inputIntensity
        }
        if let inputFalloff = inputFalloff {
            self.inputFalloff = inputFalloff
        }
    }


    /// The image to use as an input image. For filters that also use a background image, this is the foreground image.
    public var inputImage: CIImage? {
        get {
            return valueForKey("inputImage") as? CIImage
        }
        set {
            setValue(newValue, forKey: "inputImage")
        }
    }

    /// The center of the effect as x and y coordinates.
    public var inputCenter: CIVector? {
        get {
            return valueForKey("inputCenter") as? CIVector
        }
        set {
            setValue(newValue, forKey: "inputCenter")
        }
    }

    /// The distance from the center of the effect.
    public var inputRadius: CGFloat? {
        get {
            return valueForKey("inputRadius") as? CGFloat
        }
        set {
            setValue(newValue, forKey: "inputRadius")
        }
    }

    /// The intensity of the effect.
    public var inputIntensity: CGFloat? {
        get {
            return valueForKey("inputIntensity") as? CGFloat
        }
        set {
            setValue(newValue, forKey: "inputIntensity")
        }
    }

    public var inputFalloff: CGFloat? {
        get {
            return valueForKey("inputFalloff") as? CGFloat
        }
        set {
            setValue(newValue, forKey: "inputFalloff")
        }
    }
}

/**
Rotates pixels around a point to simulate a vortex. You can specify the number of rotations as well the center and radius of the effect.

[More Information](http: //developer.apple.com/cgi-bin/apple_ref.cgi?apple_ref=//apple_ref/doc/filter/ci/CIVortexDistortion)
*/
public class VortexDistortion: Filter {

    let name = "CIVortexDistortion"

    public init(inputImage: CIImage? = nil, inputCenter: CIVector? = nil, inputRadius: CGFloat? = nil, inputAngle: CGFloat? = nil) {
        super.init(name: "CIVortexDistortion")

        if let inputImage = inputImage {
            self.inputImage = inputImage
        }
        if let inputCenter = inputCenter {
            self.inputCenter = inputCenter
        }
        if let inputRadius = inputRadius {
            self.inputRadius = inputRadius
        }
        if let inputAngle = inputAngle {
            self.inputAngle = inputAngle
        }
    }


    /// The image to use as an input image. For filters that also use a background image, this is the foreground image.
    public var inputImage: CIImage? {
        get {
            return valueForKey("inputImage") as? CIImage
        }
        set {
            setValue(newValue, forKey: "inputImage")
        }
    }

    /// The center of the effect as x and y coordinates.
    public var inputCenter: CIVector? {
        get {
            return valueForKey("inputCenter") as? CIVector
        }
        set {
            setValue(newValue, forKey: "inputCenter")
        }
    }

    /// The radius determines how many pixels are used to create the distortion. The larger the radius, wider the extent of the distortion.
    public var inputRadius: CGFloat? {
        get {
            return valueForKey("inputRadius") as? CGFloat
        }
        set {
            setValue(newValue, forKey: "inputRadius")
        }
    }

    /// The angle (in radians) of the vortex.
    public var inputAngle: CGFloat? {
        get {
            return valueForKey("inputAngle") as? CGFloat
        }
        set {
            setValue(newValue, forKey: "inputAngle")
        }
    }
}

/**
Adjusts the reference white point for an image and maps all colors in the source using the new reference.

[More Information](http: //developer.apple.com/cgi-bin/apple_ref.cgi?apple_ref=//apple_ref/doc/filter/ci/CIWhitePointAdjust)
*/
public class WhitePointAdjust: Filter {

    let name = "CIWhitePointAdjust"

    public init(inputImage: CIImage? = nil, inputColor: CIColor? = nil) {
        super.init(name: "CIWhitePointAdjust")

        if let inputImage = inputImage {
            self.inputImage = inputImage
        }
        if let inputColor = inputColor {
            self.inputColor = inputColor
        }
    }


    /// The image to use as an input image. For filters that also use a background image, this is the foreground image.
    public var inputImage: CIImage? {
        get {
            return valueForKey("inputImage") as? CIImage
        }
        set {
            setValue(newValue, forKey: "inputImage")
        }
    }

    /// A color to use as the white point.
    public var inputColor: CIColor? {
        get {
            return valueForKey("inputColor") as? CIColor
        }
        set {
            setValue(newValue, forKey: "inputColor")
        }
    }
}

/**
Simulates the effect of zooming the camera while capturing the image.

[More Information](http: //developer.apple.com/cgi-bin/apple_ref.cgi?apple_ref=//apple_ref/doc/filter/ci/CIZoomBlur)
*/
public class ZoomBlur: Filter {

    let name = "CIZoomBlur"

    public init(inputImage: CIImage? = nil, inputCenter: CIVector? = nil, inputAmount: CGFloat? = nil) {
        super.init(name: "CIZoomBlur")

        if let inputImage = inputImage {
            self.inputImage = inputImage
        }
        if let inputCenter = inputCenter {
            self.inputCenter = inputCenter
        }
        if let inputAmount = inputAmount {
            self.inputAmount = inputAmount
        }
    }


    /// The image to use as an input image. For filters that also use a background image, this is the foreground image.
    public var inputImage: CIImage? {
        get {
            return valueForKey("inputImage") as? CIImage
        }
        set {
            setValue(newValue, forKey: "inputImage")
        }
    }

    /// The center of the effect as x and y coordinates.
    public var inputCenter: CIVector? {
        get {
            return valueForKey("inputCenter") as? CIVector
        }
        set {
            setValue(newValue, forKey: "inputCenter")
        }
    }

    /// The zoom-in amount. Larger values result in more zooming in.
    public var inputAmount: CGFloat? {
        get {
            return valueForKey("inputAmount") as? CGFloat
        }
        set {
            setValue(newValue, forKey: "inputAmount")
        }
    }
}

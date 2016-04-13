//: Playground - noun: a place where people can play

// Order of imports is very important
import CoreGraphics
import SwiftUtilities
import SwiftRandom
import SwiftGraphics
import SwiftGraphicsPlayground

//: CoreImage filters are exposed as unique classes.
//: Unique filter classes are subclasses of the "Filter" class. Filter is _not_ a subclass of CIFilter.
//: A newly created instance will automatically have setDefaults() called on it.
let f1 = SunbeamsGenerator()

//: All CoreImage attributes are exposed as Swift properties
f1.inputSunRadius = 200
f1.outputImage

//: You can even define some or all initial values on filter creation.
let f2 = Crystallize(inputImage: f1.outputImage, inputRadius: 50)
f2.outputImage

let f3 = TwirlDistortion(inputImage: f2.outputImage)
f3.inputRadius = 300
f3.outputImage

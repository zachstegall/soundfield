import UIKit

extension UIView {
    func setGradient(colors: [CGColor], locations: [NSNumber]) {
        let gradient = CAGradientLayer()

        gradient.frame = bounds
        gradient.colors = colors
        gradient.locations = locations

        layer.insertSublayer(gradient, at: 0)
    }
}


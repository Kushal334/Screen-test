

import UIKit

extension UIView {

  func addViewToCenter(view: UIView) {
    view.translatesAutoresizingMaskIntoConstraints = false
    self.addSubview(view)
    view.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
    view.centerYAnchor.constraint(equalTo: self.centerYAnchor).isActive = true
  }
  
}

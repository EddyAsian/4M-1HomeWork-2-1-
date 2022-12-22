//
//  CustomView.swift
//  Lesson1-month4
//
//  Created by Iusupov Ramazan on 19/12/22.
//

import UIKit

@IBDesignable
class CustomView: UIView {
    @IBOutlet private weak var contentView: UIView!
    
    @IBInspectable
    private var cornerRadius: CGFloat {
        get { self.layer.cornerRadius }
        set { self.layer.cornerRadius = newValue }
    }
    
    @IBInspectable
    private var contentColor: UIColor {
        get { self.backgroundColor ?? .clear }
        set { self.backgroundColor = newValue }
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        commonInit()
    }
    
    private func commonInit() {
        Bundle.main.loadNibNamed(String(describing: CustomView.self), owner: self)
        addSubview(contentView)
        contentView.frame = bounds
        contentView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
    }
}

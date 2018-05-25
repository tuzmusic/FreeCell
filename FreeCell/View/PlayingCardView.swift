//
//  PlayingCardView.swift
//  FreeCell
//
//  Created by Jonathan Tuzman on 1/8/17.
//  Copyright © 2017 Jonathan Tuzman. All rights reserved.
//

import UIKit

class PlayingCardView: CardView {
	
	var cardWidth: CGFloat { return superview!.bounds.width / 11.5 }
	var cardHeight: CGFloat { return cardWidth * (3.5/2.5) }

	var isSelected = false {
		didSet {
			backgroundColor = isSelected ? UIColor.lightGray : UIColor.white
		}
	}
	
	var cardColor: UIColor?
	
	fileprivate func setupLabel(_ label: UILabel) {
		label.text = cardDescription
		label.adjustsFontSizeToFitWidth = true
		label.minimumScaleFactor = 0.1
		if let color = cardColor { label.textColor = color }
		addSubview(label)
	}
	
	var cardDescription: String? {
		didSet {
			let centerLabel = UILabel()
			centerLabel.frame = self.bounds
			centerLabel.textAlignment = NSTextAlignment.center
			centerLabel.font = UIFont.monospacedDigitSystemFont(ofSize: 30, weight: .bold)
			setupLabel(centerLabel)
			
			let smallSize = CGSize(width: cardWidth, height: cardHeight / 5.5)
			let smallFont = UIFont.monospacedDigitSystemFont(ofSize: 14, weight: .medium)
			
			let topLabel = UILabel(frame: CGRect(origin: CGPoint(x: 4, y: 3), size: smallSize))
			topLabel.textAlignment = NSTextAlignment.left
			topLabel.font = smallFont
			setupLabel(topLabel)
			
			let bottomLabel = UILabel()
			bottomLabel.frame.size = smallSize
			bottomLabel.frame.origin = CGPoint(x: bounds.width - bottomLabel.frame.width - 4,
														  y: bounds.height - bottomLabel.frame.height - 3)
			bottomLabel.font = smallFont
			bottomLabel.transform = CGAffineTransform(rotationAngle: CGFloat(Double.pi))
			setupLabel(bottomLabel)
		}
	}
}

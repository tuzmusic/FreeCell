//
//  Portrait Support.swift
//  FreeCell
//
//  Created by Jonathan Tuzman on 5/24/18.
//  Copyright © 2018 Jonathan Tuzman. All rights reserved.
//

import Foundation
import UIKit

extension FreeCellViewController {
	override func viewWillTransition(to size: CGSize, with coordinator: UIViewControllerTransitionCoordinator) {
		
		super.viewWillTransition(to: size, with: coordinator)
		
		for view in boardView.subviews {
			view.removeFromSuperview()
		}
//		
//		for area in [Area.freeCells, Area.suitStacks, Area.cardColumns] {
//			boardView.createEmptyCells(in: area)
//		}
//		boardView.createEmptyCells(in: .freeCells)
//		boardView.createEmptyCells(in: .suitStacks)
//		boardView.createEmptyCells(in: .cardColumns)

		
//			resetUI()
	}
	
	fileprivate func redrawCards() {
		
	}
}

//
//  ssCollectionViewCell.swift
//  collectionView
//
//  Created by Yoshinori Kasaya on 2019/07/12.
//  Copyright © 2019 NaoXof. All rights reserved.
//

import UIKit

class ssCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var textView: UITextView!

    override func preferredLayoutAttributesFitting(_ layoutAttributes: UICollectionViewLayoutAttributes) -> UICollectionViewLayoutAttributes {
        setNeedsLayout()
        layoutIfNeeded()
        let size = contentView.systemLayoutSizeFitting(layoutAttributes.size)
        var frame = layoutAttributes.frame
        frame.size.height = ceil(size.height)
        layoutAttributes.frame = frame
        return layoutAttributes
    }
}

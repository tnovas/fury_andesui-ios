//
//  AndesSimpleViewCell.swift
//  AndesUI
//
//  Created by Jonathan Alonso Pinto on 20/10/20.
//

import Foundation

public class AndesSimpleCell: AndesListCell {

    @available(swift, obsoleted: 1.0)
    @objc public init(withTitle title: String,
                      size: AndesListSize,
                      subtitle: String,
                      thumbnail: AndesThumbnail? = nil,
                      numberOfLines: Int) {
        super.init()
        self.cellConfig(withTitle: title,
                        size: size,
                        subtitle: subtitle,
                        thumbnail: thumbnail,
                        numberOfLines: numberOfLines)
    }

    public init(withTitle title: String,
                size: AndesListSize? = .medium,
                subtitle: String? = String(),
                thumbnail: AndesThumbnail? = nil,
                numberOfLines: Int = 0) {
        super.init()
        guard let size = size, let subtitle = subtitle else { return }
        self.cellConfig(withTitle: title,
                        size: size,
                        subtitle: subtitle,
                        thumbnail: thumbnail,
                        numberOfLines: numberOfLines)
    }

    private func cellConfig(withTitle title: String,
                            size: AndesListSize,
                            subtitle: String,
                            thumbnail: AndesThumbnail? = nil,
                            numberOfLines: Int) {
        let config = AndesListCellFactory.provide(withSize: size,
                                                      subTitleIsEmpty: subtitle.isEmpty,
                                                      thumbnail: thumbnail)
        self.type = .simple
        self.title = title
        self.subtitle = subtitle
        self.fontStyle = config.font
        self.fontSubTitleStyle = config.fontDescription
        self.paddingLeftCell = config.paddingLeft
        self.paddingRightCell = config.paddingRight
        self.paddingTopCell = config.paddingTop
        self.paddingBottomCell = config.paddingBottom
        self.subTitleHeight = config.descriptionHeight
        self.separatorHeight = config.separatorHeight
        self.heightConstraint = config.height
        self.titleHeight = config.titleHeight
        self.thumbnailLeft = config.thumbnailLeft
        self.thumbnailSize = config.thumbnailSize
        self.separatorThumbnailWidth = config.separatorThumbnailWidth
        self.paddingTopThumbnail = config.paddingTopThumbnail
        self.paddingBottomThumbnail = config.paddingBottomThumbnail
        self.numberOfLines = numberOfLines
        self.thumbnailType = thumbnail?.type
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

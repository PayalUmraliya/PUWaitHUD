
import UIKit

extension NSMutableParagraphStyle {
    convenience init(alignment: NSTextAlignment,
                     firstLineHeadIndent: CGFloat,
                     headIndent: CGFloat,
                     tailIndent: CGFloat,
                     lineHeightMultiple: CGFloat,
                     maximumLineHeight: CGFloat,
                     minimumLineHeight: CGFloat,
                     lineSpacing: CGFloat,
                     paragraphSpacing: CGFloat,
                     paragraphSpacingBefore: CGFloat) {
        self.init()
        self.alignment = alignment
        self.firstLineHeadIndent = firstLineHeadIndent
        self.headIndent = headIndent
        self.tailIndent = tailIndent
        self.lineHeightMultiple = lineHeightMultiple
        self.maximumLineHeight = maximumLineHeight
        self.minimumLineHeight = minimumLineHeight
        self.lineSpacing = lineSpacing
        self.paragraphSpacing = paragraphSpacing
        self.paragraphSpacingBefore = paragraphSpacingBefore
    }
}

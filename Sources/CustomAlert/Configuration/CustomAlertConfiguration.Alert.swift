//
//  CustomAlertConfiguration.Alert.swift
//  CustomAlert
//
//  Created by David Walter on 17.10.23.
//

import Foundation
import SwiftUI

extension CustomAlertConfiguration {
    public struct Alert {
        /// The background of the alert view
        public var background: CustomAlertBackground = .blurEffect(.systemMaterial)
        /// The corner radius of the alert view
        public var cornerRadius: CGFloat = 13.3333
        /// The padding of the content of the alert view
        public var padding: EdgeInsets = EdgeInsets(top: 20, leading: 8, bottom: 20, trailing: 8)
        /// The minimum width of the alert view
        public var minWidth: CGFloat = 270
        /// The default font of the title of the alert view
        public var titleFont: Font = .headline
        /// The default font of the content of the alert view
        public var contentFont: Font = .footnote
        /// The spacing of the content of the alert view
        public var spacing: CGFloat = 4
        /// The alignment of the content of the alert view
        public var alignment: CustomAlertAlignment = .center
        /// The background color of the alert
        public var alertBackgroundColor: Color = Color(red: 0.94, green: 0.91, blue: 0.87)
        /// Create a custom configuration
        /// - Parameter configure: Callback to change the default configuration
        ///
        /// - Returns: The configured ``Alert`` configuration
        public static func create(configure: (inout Self) -> Void) -> Self {
            var configuration = Self()
            configure(&configuration)
            return configuration
        }
        
        /// The default configuration
        public static var `default`: CustomAlertConfiguration {
            CustomAlertConfiguration()
        }
        
        var textAlignment: TextAlignment {
            switch alignment {
            case .leading:
                return .leading
            case .trailing:
                return .leading
            case .center:
                return .center
            }
        }
        
        var horizontalAlignment: HorizontalAlignment {
            switch alignment {
            case .leading:
                return .leading
            case .trailing:
                return .leading
            case .center:
                return .center
            }
        }
        
        var frameAlignment: Alignment {
            switch alignment {
            case .leading:
                return .leading
            case .trailing:
                return .leading
            case .center:
                return .center
            }
        }
    }
}

public enum CustomAlertAlignment {
    case center
    case leading
    case trailing
}

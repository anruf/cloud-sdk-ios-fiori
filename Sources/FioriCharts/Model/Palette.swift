//
//  File.swift
//  FioriCharts
//
//  Created by Xu, Sheng on 3/16/20.
//

import Foundation
import SwiftUI

public enum ColorStyle: String, CaseIterable {
    /// Dynamic secondary text color, with variants for light and dark color schemes.
    /// (dark variant) ![](https://dummyimage.com/48x18/515559.png&text=+)        Hex color: 515559
    /// (light variant) ![](https://dummyimage.com/48x18/FFFFFF.png&text=+)        Hex color: FFFFFF
    case primary1
    /// Standard text color, with variants for light and dark color variants.
    /// Use `UIColor.preferredFioriColor(forStyle: background:)` to select appropriate variant.
    /// (dark variant) ![](https://dummyimage.com/48x18/5899DA.png&text=+)        Hex color: 5899DA
    /// (light variant) ![](https://dummyimage.com/48x18/74B3F0.png&text=+)        Hex color: 74B3F0
    case chart1
    /// ![](https://dummyimage.com/48x18/E8743B.png&text=+)        Hex color: E8743B
    case chart2
    /// ![](https://dummyimage.com/48x18/19A979.png&text=+)        Hex color: 19A979
    case chart3
    /// ![](https://dummyimage.com/48x18/ED4A7B.png&text=+)        Hex color: ED4A7B
    case chart4
    /// ![](https://dummyimage.com/48x18/945ECF.png&text=+)        Hex color: 945ECF
    case chart5
    /// ![](https://dummyimage.com/48x18/13A4B4.png&text=+)        Hex color: 13A4B4
    case chart6
    /// ![](https://dummyimage.com/48x18/525DF4.png&text=+)        Hex color: 525DF4
    case chart7
    /// ![](https://dummyimage.com/48x18/BF399E.png&text=+)        Hex color: BF399E
    case chart8
    /// ![](https://dummyimage.com/48x18/6C8893.png&text=+)        Hex color: 6C8893
    case chart9
    /// ![](https://dummyimage.com/48x18/EE6868.png&text=+)        Hex color: EE6868
    case chart10
    /// ![](https://dummyimage.com/48x18/2F6497.png&text=+)        Hex color: 2F6497
    case chart11
    
    /// Semantic color for "negative" (bad) value, with light and dark color variants.
    /// (dark variant) ![](https://dummyimage.com/48x18/BB0000.png&text=+)        Hex color: BB0000
    /// (light variant) ![](https://dummyimage.com/48x18/FF453A.png&text=+)        Hex color: FF453A
    case negative
    /// Semantic color for "critical" (risky) value, with light and dark color variants.
    /// (dark variant) ![](https://dummyimage.com/48x18/E9730C.png&text=+)        Hex color: E9730C
    /// (light variant) ![](https://dummyimage.com/48x18/FF9F0A.png&text=+)        Hex color: FF9F0A
    case critical
    /// Semantic color for "positive" (good) value, with light and dark color variants.
    /// (dark variant) ![](https://dummyimage.com/48x18/107E3E.png&text=+)        Hex color: 107E3E
    /// (light variant) ![](https://dummyimage.com/48x18/32D74B.png&text=+)        Hex color: 32D74B
    case positive
    
    /// Semantic stroke color for line when stock goes up.
    /// (light variant) ![](https://dummyimage.com/48x18/19A979.png&text=+)        Hex color: 19A979
    case stockUpStroke
    
    /// Semantic stroke color for line when stock goes down.
    /// (light variant) ![](https://dummyimage.com/48x18/AB2217.png&text=+)        Hex color: AB2217
    case stockDownStroke
    
    /// Semanticfill color for gradient start color when stock goes up.
    /// (light variant) ![](https://dummyimage.com/48x18/7EFAA1.png&text=+)        Hex color: 7EFAA1
    case stockUpFill
    
    /// Semantic fill color for gradient start color when stock goes up.
    /// (light variant) ![](https://dummyimage.com/48x18/EDD3D2.png&text=+)        Hex color: EDD3D2
    case stockDownFill
    
    /// Semantic fill color for gradient end color.
    /// (light variant) ![](https://dummyimage.com/48x18/FCFDFC.png&text=+)        Hex color: FCFDFC
    case stockFillEndColor
}

extension ColorStyle: CustomDebugStringConvertible {
    public var debugDescription: String {
        return self.rawValue
    }
}

public class Palette {
    public class func hexColor(for colorStyle: ColorStyle) -> HexColor {
        switch colorStyle {
        case.primary1:
            return HexColor(colors: [.light: "515559", .dark: "FFFFFF"])
        case .chart1:
            return HexColor(colors: [.light: "5899DA", .dark: "74B3F0"])
        case .chart2:
            return HexColor(colors: [.light: "E8743B", .dark: "E8743B"])
        case .chart3:
            return HexColor(colors: [.light: "19A979", .dark: "5899DA"])
        case .chart4:
            return HexColor(colors: [.light: "ED4A7B", .dark: "5899DA"])
        case .chart5:
            return HexColor(colors: [.light: "945ECF", .dark: "5899DA"])
        case .chart6:
            return HexColor(colors: [.light: "13A4B4", .dark: "5899DA"])
        case .chart7:
            return HexColor(colors: [.light: "525DF4", .dark: "5C66F5"])
        case .chart8:
            return HexColor(colors: [.light: "BF399E", .dark: "C63FA4"])
        case .chart9:
            return HexColor(colors: [.light: "6C8893", .dark: "6C8893"])
        case .chart10:
            return HexColor(colors: [.light: "EE6868", .dark: "EE6868"])
        case .chart11:
            return HexColor(colors: [.light: "2F6497", .dark: "387BB7"])
        case .negative:
            return HexColor(colors: [.light: "BB0000", .dark: "FF453A"])
        case .critical:
            return HexColor(colors: [.light: "E9730C", .dark: "FF9F0A"])
        case .positive:
            return HexColor(colors: [.light: "107E3E", .dark: "32D74B"])
            
        case .stockUpStroke:
            return HexColor(colors: [.light: "19A979", .dark: "19A979"])
        case .stockDownStroke:
            return HexColor(colors: [.light: "AB2217", .dark: "AB2217"])
        case .stockUpFill:
            return HexColor(colors: [.light: "7EFAA1", .dark: "7EFAA1"])
        case .stockDownFill:
            return HexColor(colors: [.light: "CD3328", .dark: "CD3328"])
        case .stockFillEndColor:
            return HexColor(colors: [.light: "FCFDFC", .dark: "FCFDFC"])
        }
    }
}

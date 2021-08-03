//
//  NSCollectionLayoutSection+Testing.swift
//  DJATesting
//
//  Created by Stephen Anthony on 03/08/2021.
//

import UIKit

@available(iOSApplicationExtension 13.0, *)
public extension NSCollectionLayoutSection {
    
    /// The receiver's layout group.
    var layoutGroup: NSCollectionLayoutGroup {
        value(forKey: "group") as! NSCollectionLayoutGroup
    }
}

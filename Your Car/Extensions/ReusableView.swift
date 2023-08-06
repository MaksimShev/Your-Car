//
//  ReusableView.swift
//  Your Car
//
//  Created by 1 on 04.08.2023.
//


import UIKit

public protocol ReusableView: AnyObject { }

extension ReusableView where Self: UIView {
    public static var reuseIdentifier: String {
        return String(describing: self)
    }
}

extension UITableViewCell: ReusableView { }
extension UICollectionViewCell: ReusableView { }

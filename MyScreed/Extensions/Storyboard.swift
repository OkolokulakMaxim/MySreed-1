//
//  Storyboard.swift
//  MyScreed
//
//  Created by пользователь on 6/16/20.
//  Copyright © 2020 Александр Майко. All rights reserved.
//

import UIKit

extension UIViewController : StoryboardIdentifiable { }

protocol StoryboardIdentifiable {
    static var storyboardIdentifier: String { get }
}

extension StoryboardIdentifiable where Self: UIViewController {
    static var storyboardIdentifier: String {
        return String(describing: self)
    }
}

extension UIStoryboard {
    
    enum Storyboard: String {
        case main
        var filename: String {
            return rawValue.capitalized
        }
    }

    convenience init(storyboard: Storyboard, bundle: Bundle? = nil) {
        self.init(name: storyboard.filename, bundle: bundle)
    }

    class func storyboard(_ storyboard: Storyboard, bundle: Bundle? = nil) -> UIStoryboard {
        return UIStoryboard(name: storyboard.filename, bundle: bundle)
    }

    func instantiateViewController<T: UIViewController>() -> T where T : StoryboardIdentifiable {
        guard let viewController = self.instantiateViewController(withIdentifier: T.storyboardIdentifier) as? T else {
            fatalError("Couldn't instantiate view controller with identifier \(T.storyboardIdentifier) ")
        }
        return viewController
    }
}



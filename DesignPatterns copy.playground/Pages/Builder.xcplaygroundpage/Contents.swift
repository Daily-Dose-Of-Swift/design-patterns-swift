/*:
 [< Previous](@previous)           [Home](Introduction)           [Next >](@next)
*/
import Foundation
import UIKit

// Builder

final class NavigationBarBuilder  {
   private var navigationItem = UINavigationItem()

     func rightBarButton(_ barButtons: [UIBarButtonItem]) -> NavigationBarBuilder {
        navigationItem.setRightBarButtonItems(barButtons, animated: true)

        return self
    }

    func leftBarButton(_ barButtons: [UIBarButtonItem]) -> NavigationBarBuilder {
       navigationItem.setLeftBarButtonItems(barButtons, animated: true)

       return self
   }

    func title(_ title: String) -> NavigationBarBuilder {
        navigationItem.title = title

        return self
    }

    func build() -> UINavigationBar {
        let navigationBar = UINavigationBar()
        navigationBar.setItems([navigationItem], animated: false)

        return navigationBar
    }
}

let navigation1 = NavigationBarBuilder()
    .title("Title")
    .rightBarButton([.init(systemItem: .add)])
    .build()

let navigation2 = NavigationBarBuilder()
    .leftBarButton([.init(systemItem: .cancel)])
    .build()

let navigation3 = NavigationBarBuilder()
    .title("Title")
    .build()

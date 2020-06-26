//
//  JokesCategoriesRouter.swift
//  ChuckNorrisJokes
//
//  Created by rafaela.lourenco on 26/06/20.
//  Copyright © 2020 Vitor Ferraz Varela. All rights reserved.
//

import Foundation
import UIKit

class JokesCategoriesRouter: JokesCategoriesRouterProtocol {
    weak var baseViewController: UIViewController?

    func build() -> UIViewController {
        let interactor = JokesCategoriesInteractor()
        let presenter = JokesCategoriesPresenter()
        let viewController = JokesCategoriesViewController()

        viewController.presenter = presenter
        presenter.view = viewController
        presenter.interactor = interactor
        presenter.router = self
        interactor.output = presenter
        baseViewController = viewController

         let navigationController = UINavigationController(rootViewController: viewController)

        navigationController.navigationBar.prefersLargeTitles = true
        return navigationController
    }
}

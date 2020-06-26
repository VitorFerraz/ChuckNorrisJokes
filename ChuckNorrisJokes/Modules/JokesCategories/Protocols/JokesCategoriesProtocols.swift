//
//  JokesCategoriesProtocols.swift
//  ChuckNorrisJokes
//
//  Created by rafaela.lourenco on 26/06/20.
//  Copyright © 2020 Vitor Ferraz Varela. All rights reserved.
//

import Foundation
import UIKit

protocol JokesCategoriesViewProtocol: AnyObject {
    var presenter: JokesCategoriesPresenterProtocol? { get set }
    // Add here your methods for communication PRESENTER -> VIEW
    func reloadData()
    func showError(errorMessage: String)
}

protocol JokesCategoriesPresenterProtocol: AnyObject {
    var view: JokesCategoriesViewProtocol? { get set }
    var interactor: JokesCategoriesInteractorProtocol? { get set }
    var router: JokesCategoriesRouterProtocol? { get set }

    // Add here your methods for communication VIEW -> PRESENTER
    func viewWillAppear()
}

protocol JokesCategoriesInteractorOutputProtocol: AnyObject {
    // Add here your methods for communication INTERACTOR -> PRESENTER
}

protocol JokesCategoriesInteractorProtocol: AnyObject {
    var output: JokesCategoriesInteractorOutputProtocol? { get set }

    // Add here your methods for communication PRESENTER -> INTERACTOR

}

protocol JokesCategoriesRouterProtocol: AnyObject {
    // Add here your methods for communication PRESENTER -> ROUTER
    func build() -> UIViewController
}

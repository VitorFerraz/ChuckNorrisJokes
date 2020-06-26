//
//  JokesCategoriesPresenter.swift
//  ChuckNorrisJokes
//
//  Created by rafaela.lourenco on 26/06/20.
//  Copyright © 2020 Vitor Ferraz Varela. All rights reserved.
//

import Foundation

class JokesCategoriesPresenter: JokesCategoriesPresenterProtocol, JokesCategoriesInteractorOutputProtocol {
    var view: JokesCategoriesViewProtocol?

    var interactor: JokesCategoriesInteractorProtocol?

    var router: JokesCategoriesRouterProtocol?

    func viewWillAppear() {

    }

}

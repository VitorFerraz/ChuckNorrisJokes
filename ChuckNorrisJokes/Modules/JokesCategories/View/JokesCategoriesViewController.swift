//
//  JokesCategoriesViewController.swift
//  ChuckNorrisJokes
//
//  Created by rafaela.lourenco on 26/06/20.
//  Copyright © 2020 Vitor Ferraz Varela. All rights reserved.
//

import UIKit

class JokesCategoriesViewController: UIViewController {
    var presenter: JokesCategoriesPresenterProtocol?

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.red
    }

}

extension JokesCategoriesViewController: JokesCategoriesViewProtocol {
    func reloadData() {

    }

    func showError(errorMessage: String) {

    }

}

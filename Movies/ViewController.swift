//
//  ViewController.swift
//  Movies
//
//  Created by Keerthi Devipriya(kdp) on 11/03/23.
//

import UIKit

class ViewController: UIViewController {

    var model: FilmModel?
    
    lazy var moviesTableView: UITableView = {
        let tableView = UITableView()
        tableView.register(FilmCell.self, forCellReuseIdentifier: FilmCell.reuseIdentifier)
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.estimatedRowHeight = UITableView.automaticDimension
        return tableView
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        getFilmModel()
        setUpTableView()
        setUpUI()
    }
    
    func getFilmModel() {
        model = ApiIntegration.getFilms()
    }
    
    func setUpTableView() {
        moviesTableView.delegate = self
        moviesTableView.dataSource = self
    }
    
    func setUpUI() {
        self.view.addSubview(moviesTableView)
        
        NSLayoutConstraint.activate([
            moviesTableView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 16),
            moviesTableView.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -16),
            moviesTableView.topAnchor.constraint(equalTo: view.topAnchor, constant: 20),
            moviesTableView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])
    }
}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return model?.Search?.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: FilmCell.reuseIdentifier, for: indexPath) as! FilmCell
        cell.setupData(model: model?.Search?[indexPath.row])
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }
}


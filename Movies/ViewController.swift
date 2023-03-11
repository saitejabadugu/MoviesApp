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
        let tableView = UITableView(frame: .infinite, style: .plain)
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "Box")
        tableView.translatesAutoresizingMaskIntoConstraints = false
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
        let cell = tableView.dequeueReusableCell(withIdentifier: "Box", for: indexPath) as UITableViewCell
        cell.backgroundColor = .cyan
        cell.textLabel?.text = model?.Search?[indexPath.row].Title
        cell.textLabel?.numberOfLines = 0
        cell.detailTextLabel?.text = model?.Search?[indexPath.row].Year
        cell.detailTextLabel?.numberOfLines = 0
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }
}


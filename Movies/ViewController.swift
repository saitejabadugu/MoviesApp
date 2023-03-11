//
//  ViewController.swift
//  Movies
//
//  Created by Keerthi Devipriya(kdp) on 11/03/23.
//

import UIKit

class ViewController: UIViewController {

    var model: FilmModel?
    
    lazy var moviesTableView:  UITableView = {
        let tableView = UITableView()
        tableView.backgroundColor = .white
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "Box")
        return tableView
    }()
    
    lazy var helloWorldLabel: UILabel = {
        var label = UILabel()
        label.text = "Hello World"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .cyan
        getFilmModel()
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
        //self.view.addSubview(helloWorldLabel)
        
        NSLayoutConstraint.activate([
            /*tableView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 16),
            tableView.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -16),
            tableView.topAnchor.constraint(equalTo: view.topAnchor, constant: 20),
            tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor),*/

            
            moviesTableView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            moviesTableView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            moviesTableView.heightAnchor.constraint(equalToConstant: 120)
            
            
            /*helloWorldLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            helloWorldLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor)*/
        ])
    }
}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Box", for: indexPath) as UITableViewCell
        cell.backgroundColor = .darkGray
        cell.textLabel?.text = "Keeethu"
        return cell
    }
}


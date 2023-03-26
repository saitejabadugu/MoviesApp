//
//  FilmDetailVC.swift
//  Movies
//
//  Created by Keerthi Devipriya(kdp) on 17/03/23.
//

import UIKit

class FilmDetailVC: UIViewController {

    var model: FilmDetailModel?
    
    lazy var contentView: UIView = {
       let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    lazy var posterImg: UIImageView = {
        let img = UIImageView()
        img.contentMode = .scaleAspectFit
        img.translatesAutoresizingMaskIntoConstraints = false
        return img
    }()
    
    lazy var movieTitleLabel: UILabel = {
       let lbl = UILabel()
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.text = "dummy"
        lbl.textColor = .red
        return lbl
    }()
    
    lazy var directorLabel: UILabel = {
       let lbl = UILabel()
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.textColor = .red
        return lbl
    }()
    
    lazy var castLabel: UILabel = {
       let lbl = UILabel()
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.textColor = .red
        return lbl
    }()
    
    lazy var releasedDateLabel: UILabel = {
       let lbl = UILabel()
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.textColor = .red
        return lbl
    }()
    
    lazy var genreLabel: UILabel = {
       let lbl = UILabel()
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.textColor = .red
        return lbl
    }()
    
    lazy var runTimeLabel: UILabel = {
       let lbl = UILabel()
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.textColor = .red
        return lbl
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        getFilmDetails()
        setUpData()
        setUpUI()
        setUpAutoLayout()
    }
    
    
    func getFilmDetails() {
        model = ApiIntegration.getFilmDetail()
    }
    
    func setUpData() {
        movieTitleLabel.text = model?.Title
    }
    
    
    func setUpUI() {
        contentView.addSubview(movieTitleLabel)
        view.addSubview(contentView)
    }
    
    func setUpAutoLayout() {
        NSLayoutConstraint.activate([
            contentView.leftAnchor.constraint(equalTo: view.leftAnchor),
            contentView.rightAnchor.constraint(equalTo: view.rightAnchor),
            contentView.topAnchor.constraint(equalTo: view.topAnchor),
            contentView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            
            movieTitleLabel.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 16),
            movieTitleLabel.rightAnchor.constraint(equalTo: contentView.rightAnchor, constant: -16),
            movieTitleLabel.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 120)
        ])
        
    }
}

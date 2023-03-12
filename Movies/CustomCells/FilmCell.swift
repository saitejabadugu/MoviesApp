//
//  FilmCell.swift
//  Movies
//
//  Created by Keerthi Devipriya(kdp) on 12/03/23.
//

import UIKit

class FilmCell: UITableViewCell {
    static let reuseIdentifier = "FilmCell"
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setUpUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    lazy var containerView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    lazy var moviePoster: UIImageView = {
        let iv = UIImageView()
        iv.image = UIImage(named: "bollywoodhero")
        iv.contentMode = .scaleAspectFit
        iv.translatesAutoresizingMaskIntoConstraints = false
        return iv
    }()
    
    lazy var movieTitleLbl: UILabel = {
        let label = UILabel()
        label.text = "Movie Title"
        label.numberOfLines = 0
        label.font = UIFont(name: "Roman", size: 12)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    lazy var movieYearLbl: UILabel = {
        let label = UILabel()
        label.text = "Movie Year"
        label.font = UIFont(name: "Roman", size: 8)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    func setUpUI() {
        contentView.addSubview(containerView)
        containerView.addSubview(moviePoster)
        containerView.addSubview(movieTitleLbl)
        containerView.addSubview(movieYearLbl)
        
        NSLayoutConstraint.activate([
            containerView.leftAnchor.constraint(equalTo: contentView.leftAnchor),
            containerView.rightAnchor.constraint(equalTo: contentView.rightAnchor),
            containerView.topAnchor.constraint(equalTo: contentView.topAnchor),
            containerView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: 8),
            containerView.heightAnchor.constraint(equalToConstant: 80),
            
            moviePoster.topAnchor.constraint(equalTo: containerView.topAnchor),
            moviePoster.bottomAnchor.constraint(equalTo: containerView.bottomAnchor),
            moviePoster.leftAnchor.constraint(equalTo: containerView.leftAnchor, constant: 8),
            moviePoster.widthAnchor.constraint(equalToConstant: 45),
            moviePoster.heightAnchor.constraint(equalToConstant: 45),
            
            movieTitleLbl.topAnchor.constraint(equalTo: containerView.topAnchor),
            movieTitleLbl.leftAnchor.constraint(equalTo: moviePoster.rightAnchor, constant: 8),
            movieTitleLbl.rightAnchor.constraint(equalTo: containerView.rightAnchor, constant: -8),
            
            movieYearLbl.topAnchor.constraint(equalTo: movieTitleLbl.bottomAnchor),
            movieYearLbl.bottomAnchor.constraint(equalTo: containerView.bottomAnchor, constant: -16),
            movieYearLbl.leftAnchor.constraint(equalTo: moviePoster.rightAnchor, constant: 8),
            movieYearLbl.rightAnchor.constraint(equalTo: containerView.rightAnchor, constant: -8),
        ])
    }
    
    func setupData(model: Film?) {
        movieTitleLbl.text = model?.Title
        movieYearLbl.text = model?.Year
    }
}

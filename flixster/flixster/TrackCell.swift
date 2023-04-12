//
//  TrackCell.swift
//  flixster
//
//  Created by Rafee Adnan on 3/11/23.
//
import Nuke
import UIKit

class TrackCell: UITableViewCell {
    
    func configure(with movie: Movie) {
        movieNameLabel.text = movie.original_title
        movieDescLabel.text = movie.overview
        
        Nuke.loadImage(with: URL(string: Movie.posterBaseURLString + movie.poster_path)!, into: movieImageView)
    }

    @IBOutlet weak var movieDescLabel: UILabel!
    @IBOutlet weak var movieNameLabel: UILabel!
    @IBOutlet weak var movieImageView: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

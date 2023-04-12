//
//  DetailViewController.swift
//  flixster
//
//  Created by Rafee Adnan on 3/11/23.
//

import UIKit
import Nuke

class DetailViewController: UIViewController {
    
    var movie: Movie!
    
    @IBOutlet weak var countView: UILabel!
    @IBOutlet weak var avgView: UILabel!
    @IBOutlet weak var descView: UILabel!
    @IBOutlet weak var detailImageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        Nuke.loadImage(with: URL(string: Movie.posterBaseURLString + movie.poster_path)!, into: detailImageView)
        avgView.text = String(movie.vote_average)
        countView.text = String(movie.vote_count)
        descView.text = movie.overview
        
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

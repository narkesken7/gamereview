//
//  ViewController.swift
//  kino
//
//  Created by user on 24.07.2023.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayComment.count
    }

    @IBOutlet weak var descriptionText: UITextView!
    @IBOutlet weak var gameImage: UIImageView!
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "comment") as! CommentCell
        cell.emoji.text = arrayComment[indexPath.row].avatar
        cell.commentLabel.text = arrayComment[indexPath.row].comment
        cell.scoreLabel.text = String(arrayComment[indexPath.row].score)
        cell.nameLabel.text = arrayComment[indexPath.row].login
       return cell
    }
   
    
    var gameImage1: UIImage?
    var description1: String?
    @IBOutlet weak var commentTable: UITableView!
    
    @IBOutlet weak var totalScoreLabel: UITextView!
    override func viewDidLoad() {
        commentTable.dataSource = self
        commentTable.delegate = self
        super.viewDidLoad()
        gameImage.image = gameImage1
        descriptionText.text = description1
        var avg = 0.0
        for i in arrayComment{
            avg += i.score
        }
        // Do any additional setup after loading the view.
        avg = avg / Double(arrayComment.count)
        totalScoreLabel.text = "\(avg.rounded())"
    }
    var arrayComment = [Comment(score: 90.0, comment: "Fascinating and very beautiful game with engaging plot", login: "Jannur"), Comment(score: 79.0, comment: "Actually it wasn't the samurai who defeated turkic-mongols, but the Tsunamis of the SEA!🙄", login: "Mongke"), Comment(score:97.0, comment: "Great job by Sucker Punch Productions!", login: "Samurai")]

}


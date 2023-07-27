//
//  MainViewController.swift
//  kino
//
//  Created by user on 26.07.2023.
//

import UIKit

class MainViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        arrayGame.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "game") as! GameCell
        
        cell.imagegame.image = arrayGame[indexPath.row].image
        cell.nameGame.text = arrayGame[indexPath.row].name
        
        return cell
    }
    
    var arrayGame = [Game( name: "Ghost of Tsushima", image:UIImage.init(named: "Ghost_of_Tsushima.jpg")!, descrption: "Ghost of Tsushima: action-adventure game developed by the Sucker Punch Productions and published by Sony Interactive Entertainment in 2020.", arrayComment: [Comment(score: 90.0, comment: "Fascinating and very beautiful game with engaging plot", login: "Jannur"), Comment(score: 79.0, comment: "Actually it wasn't the samurai who defeated turkic-mongols, but the Tsunamis of the SEA!🙄", login: "Mongke"), Comment(score:97.0, comment: "Great job by Sucker Punch Productions!", login: "Samurai")]), Game(name: "Red Dead Redemtion 2", image: UIImage.init(named: "red_dead_redemption_2")!, descrption: "Red Dead Redemtion: is a 2018 action-adventure game developed and published by Rockstar Games.", arrayComment: [Comment(score:99.0, comment: "Just worth it, magnicifent. The best game ever", login: "Zhannur"), Comment(score:95.0, comment: "Just Wild West vibes", login: "Javier"), Comment(score:91.0, comment: "The piece of art by Rockstar Games", login: "John Marston")]), Game(name: "Detroit: Become Human", image: UIImage.init(named: "Detroit_Become_Human")!, descrption: "Detroit: Become Human is a 2018 adventure video game developed by Quantic Dream.", arrayComment: [Comment(score: 91.0, comment: "Great game", login: "Bill"), Comment(score: 92.0, comment: "The future is here!", login: "Aguero"), Comment(score: 75.0, comment: "Expected more", login: "Juan")])]
    

    @IBOutlet weak var GameTableView: UITableView!
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "review" {
            let destination = segue.destination as! ViewController
            let index = GameTableView.indexPathForSelectedRow?.row
            destination.gameImage1 = arrayGame[index!].image
            destination.description1 = arrayGame[index!].descrption
            destination.arrayComment = arrayGame[index!].arrayComment
            
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        GameTableView.dataSource = self
        GameTableView.delegate = self

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

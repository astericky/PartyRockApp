//
//  ViewController.swift
//  PartyRockApp
//
//  Created by Christopher Sanders on 5/13/17.
//  Copyright © 2017 Christopher Sanders. All rights reserved.
//

import UIKit

class MainVC: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    
    var partyRocks = [PartyRock]()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let p1 = PartyRock(imageUrl: "http://www.wavefm.com.au/images/stories/2015/04/redfoo.jpg", videoUrl: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/ev4bY1SkZLg?list=PL0SSw9dW4gTRDD0mE2SC2uFLcs2j9FE2j\" frameborder=\"0\" allowfullscreen></iframe>", videoTitle: "Where The Sun Goes Down")
        
        let p2 = PartyRock(imageUrl: "http://www.wavefm.com.au/images/stories/2015/04/redfoo.jpg", videoUrl: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/ev4bY1SkZLg?list=PL0SSw9dW4gTRDD0mE2SC2uFLcs2j9FE2j\" frameborder=\"0\" allowfullscreen></iframe>", videoTitle: "Milos Goes Down")
        
        let p3 = PartyRock(imageUrl: "http://www.wavefm.com.au/images/stories/2015/04/redfoo.jpg", videoUrl: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/ev4bY1SkZLg?list=PL0SSw9dW4gTRDD0mE2SC2uFLcs2j9FE2j\" frameborder=\"0\" allowfullscreen></iframe>", videoTitle: "Antonio Goes Down")
        
        let p4 = PartyRock(imageUrl: "http://www.wavefm.com.au/images/stories/2015/04/redfoo.jpg", videoUrl: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/ev4bY1SkZLg?list=PL0SSw9dW4gTRDD0mE2SC2uFLcs2j9FE2j\" frameborder=\"0\" allowfullscreen></iframe>", videoTitle: "Sunny Goes Down")
        
        let p5 = PartyRock(imageUrl: "http://www.wavefm.com.au/images/stories/2015/04/redfoo.jpg", videoUrl: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/ev4bY1SkZLg?list=PL0SSw9dW4gTRDD0mE2SC2uFLcs2j9FE2j\" frameborder=\"0\" allowfullscreen></iframe>", videoTitle: "Chris Goes Down")
        
        partyRocks.append(p1)
        partyRocks.append(p2)
        partyRocks.append(p3)
        partyRocks.append(p4)
        partyRocks.append(p5)
        
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if let cell = tableView.dequeueReusableCell(withIdentifier: "PartyCell", for: indexPath) as? PartyCell {
            let partyRock = partyRocks[indexPath.row]
            print("\(partyRock.videoTitle)")
            cell.updateUI(partyRock: partyRock)
            
            return cell
        }
        return UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return partyRocks.count
    }

}


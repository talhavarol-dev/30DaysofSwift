//
//  ViewController.swift
//  #2PlayLocalVideo
//
//  Created by Talha Varol on 08.03.2022.
//

import UIKit
import AVKit
import AVFoundation
class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    var data = [
       
        Video(image: "videoScreenshot01",
              title: "Introduce 3DS Mario",
              createdBy: "Youtube - 06:32"),
        Video(image: "videoScreenshot02",
              title: "Emoji Among Us",
              createdBy: "Vimeo - 3:34"),
        Video(image: "videoScreenshot03",
              title: "Seals Documentary",
              createdBy: "Vine - 00:06"),
        Video(image: "videoScreenshot04",
              title: "Adventure Time",
              createdBy: "Youtube - 02:39"),
        Video(image: "videoScreenshot05",
              title: "Facebook HQ",
              createdBy: "Facebook - 10:20"),
        Video(image: "videoScreenshot06",
              title: "Lijiang Lugu Lake",
              createdBy: "Allen - 20:30")
    ]

    @IBOutlet weak var videoTableView: UITableView!
    
   
    // AV Kit kullanacağımız için gerekli tanımlamaları yaptık.
    var playerController = AVPlayerViewController()
    var playerView = AVPlayer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        videoTableView.delegate = self
        videoTableView.dataSource = self
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 220
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = videoTableView.dequeueReusableCell(withIdentifier: "VideoCell", for: indexPath) as! VideoCellTableViewCell
        let video = data[indexPath.row]
        cell.videoScreen.image = UIImage(named: video.image)
        cell.titleLabel.text = video.title
        cell.createdLabel.text = video.createdBy
        
        return cell

    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
       
        
    }

    @IBAction func playButtonClicked(_ sender: Any) {
        let videoPath = Bundle.main.path(forResource: "a", ofType: "mp4")
        let playerone =  URL(fileURLWithPath: videoPath!)
        playerView = AVPlayer(url: playerone)
    
        playerController.player = playerView
        
        self.present(playerController, animated: true) {
            self.playerController.player?.play() // açılır açılmaz play yapılmasını sağlar.
    }
    }
    
}


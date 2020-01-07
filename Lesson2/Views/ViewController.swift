//
//  ViewController.swift
//  Homework2
//
//  Created by Родион Кубышкин on 24/12/2019.
//  Copyright © 2019 Родион Кубышкин. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {

    @IBOutlet weak var avatarImage: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var onlineLabel: UILabel!
    @IBOutlet weak var ageLabel: UILabel!
    @IBOutlet weak var statusLabel: UILabel!
    @IBOutlet weak var birthLabel: UILabel!
    @IBOutlet weak var jobLabel: UILabel!
    @IBOutlet weak var instagramLabel: UILabel!
    @IBOutlet weak var vkLabel: UILabel!
    @IBOutlet weak var schoolLabel: UILabel!
    @IBOutlet weak var universityLabel: UILabel!
    @IBOutlet weak var giftsImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initRandomUser()
        // Do any additional setup after loading the view.
    }
    
    func initRandomUser() {
        var user = User()
        user = user.getRandomUser()
        
        avatarImage.image = UIImage(named: user.avatar)
        nameLabel.text = user.name
        onlineLabel.text = user.online
        ageLabel.text = user.year
        statusLabel.text = user.status
        birthLabel.text = user.dateOfBirth
        jobLabel.text = user.company
        instagramLabel.text = user.instagram
        vkLabel.text = user.vk
        schoolLabel.text = user.school
        universityLabel.text = user.university
        giftsImage.image = UIImage(named: user.gifts)
    }


}


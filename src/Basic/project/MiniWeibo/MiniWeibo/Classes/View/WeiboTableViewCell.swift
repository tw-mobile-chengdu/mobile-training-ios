//
//  WeiboTableViewCell.swift
//  MiniWeibo
//
//  Created by Weicheng Wang on 2019/12/30.
//  Copyright © 2019 ThoughtWorks. All rights reserved.
//

import UIKit

class WeiboTableViewCell: UITableViewCell {

    @IBOutlet weak var avatarImageView: UIImageView!
    @IBOutlet weak var flagImageView: UIImageView!
    @IBOutlet weak var nicknameLabel: UILabel!
    @IBOutlet weak var descLabel: UILabel!
    @IBOutlet weak var levelImageView: UIImageView!
    @IBOutlet weak var followButton: UIButton!
    @IBOutlet weak var contentLabel: UILabel!
    @IBOutlet var coverImageViews: [UIImageView]!
    @IBOutlet weak var singleImageView: UIImageView!
    @IBOutlet weak var discussLabel: UILabel!
    @IBOutlet weak var topicImageView: UIImageView!
    @IBOutlet weak var topicLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    @IBAction func followAction(_ sender: Any) {
    }
    
}

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
    @IBOutlet weak var coverImageHeightConstraint: NSLayoutConstraint!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func set(_ model: WeiboModel) {
        nicknameLabel.text = model.user?.nickname
        descLabel.text = "\(model.follow_count)人关注了TA"
        levelImageView.isHidden = true
        followButton.isEnabled = true
        flagImageView.isHidden = !model.is_vip
        if let avatar = model.user?.avatar {
            let url = URL(string: "http://localhost:3000/" + avatar)!
            avatarImageView.load(from: url)
        }else{
            avatarImageView.backgroundColor = UIColor.gray
        }
        
        
        singleImageView.isHidden = true
        coverImageViews.forEach{ $0.isHidden = true }
        
        contentLabel.text = model.content
        
        guard let count = model.imgs?.count, count > 0 else {
            coverImageHeightConstraint.constant = 0
            return
        }
        
        for (idx, value) in (model.imgs ?? []).enumerated() {
            let imageView: UIImageView
            if count == 1 {
                imageView = singleImageView
            }else if count == 4 && idx > 1 {
                imageView = coverImageViews[idx+1]
            }else{
                imageView = coverImageViews[idx]
            }
            
            imageView.isHidden = false
            let url = URL(string: "http://localhost:3000/" + value)!
            imageView.load(from: url)
            
        }
        // 图片高度
        let height = (UIScreen.main.bounds.width - 30 - 20)/3
        
        if count == 1 {
            coverImageHeightConstraint.constant = 3 * (height + 10)
        }else if count <= 3 {
            coverImageHeightConstraint.constant = height + 10
        }else if count <= 6 {
            coverImageHeightConstraint.constant = 2 * (height + 10)
        }else if count <= 9 {
            coverImageHeightConstraint.constant = 3 * (height + 10)
        }
    }
    @IBAction func followAction(_ sender: Any) {
    }
    
}

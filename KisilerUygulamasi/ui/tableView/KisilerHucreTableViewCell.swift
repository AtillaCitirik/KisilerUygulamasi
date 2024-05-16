//
//  KisilerHucreTableViewCell.swift
//  KisilerUygulamasi
//
//  Created by Atilla Çıtırık on 16.05.2024.
//

import UIKit

class KisilerHucreTableViewCell: UITableViewCell {

    @IBOutlet weak var lableKisiAd: UILabel!
    @IBOutlet weak var lableKisiTel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

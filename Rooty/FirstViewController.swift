//
//  FirstViewController.swift
//  Rooty
//
//  Created by Abdelrahman Sobhy on 3/11/20.
//  Copyright © 2020 Macbook pro. All rights reserved.
//

import UIKit
import Alamofire
import Kingfisher

class FirstViewController: UIViewController {
    @IBOutlet weak var huskyImg: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        AF.request("https://dog.ceo/api/breed/husky/images/random").responseJSON{responds in
            switch responds.result{
            case .success(let result):
                let value = result as! [String : String]
                let huskyUrlImg = value["message"]
                self.huskyImg.kf.setImage(with: URL(string: huskyUrlImg!))

            case .failure(let error):
                print(error)
            }
        }




    }


}


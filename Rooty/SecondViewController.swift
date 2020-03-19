//
//  SecondViewController.swift
//  Rooty
//
//  Created by Abdelrahman Sobhy on 3/11/20.
//  Copyright © 2020 Macbook pro. All rights reserved.
//

import UIKit
import Alamofire
import Kingfisher

class SecondViewController: UIViewController {
    @IBOutlet weak var boxerImg: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()


        AF.request("https://dog.ceo/api/breed/boxer/images/random").responseJSON{responds in
            switch responds.result{
            case .success(let result):
                let value = result as! [String : String]
                let boxerUrlImg = value["message"]
                self.boxerImg.kf.setImage(with: URL(string: boxerUrlImg!))

            case .failure(let error):
                print(error)
            }
        }



    }


}


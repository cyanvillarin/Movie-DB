//
//  ViewController.swift
//  Movie db
//
//  Created by CYAN on 2020/11/13.
//  Copyright © 2020 Cyan Villarin. All rights reserved.
//

import UIKit
import Alamofire
import SwiftyJSON

class ViewController: UIViewController {

   override func viewDidLoad() {
      super.viewDidLoad()
      fetchMovie()
   }
   
   func fetchMovie() {

      let endpoint = "http://www.omdbapi.com/?apikey=9b67ae8d"
      
      Alamofire.request(endpoint, method: .get).responseJSON { (response) -> Void in
        
        if let error = response.error {
            print("Error = \(error.localizedDescription)")
            print("=========\n")
        }
        
        if let result = response.result.value {
            let result = JSON(result)
            print(result)
            print("=========\n")
        }
      }
   }


}


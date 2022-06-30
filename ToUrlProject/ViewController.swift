//
//  ViewController.swift
//  ToUrlProject
//
//  Created by 1 on 6/5/22.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        func getPost(){
            guard let url = URL(string: "https://jsonplaceholder.typicode.com/posts") else {return}
            let session = URLSession.shared.dataTask(with: url){
                data, response, error in
                
                if let error = error {
                    print("There was an error: \(error.localizedDescription)")
                } else {
                    let jsonRes = try? JSONSerialization.jsonObject(with: data!, options: [])
                    print("The response \(jsonRes)")
                }
            }.resume()
        }
        
    }
    
}


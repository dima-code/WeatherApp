//
//  ViewController.swift
//  SwiftUI.weather
//
//  Created by Dmitrii Eselidze on 09.05.2024.
//

import UIKit


class ViewController: UIViewController{
    
    override func viewDidLoad() {
        super.viewDidLoad()
        obtainWeather()
    }
    
    private func obtainWeather(){
        var request = URLRequest(url: URL(string: "https://v2.jokeapi.dev/joke/Any")!)
        
        let task = URLSession.shared.dataTask(with: request){
            data,response, error in
            print(String(decoding: data!, as: UTF8.self))
            print(error)
        }
        task.resume()
    }
}

 

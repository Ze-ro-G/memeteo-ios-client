//
//  ViewController.swift
//  MemeteoClient
//
//  Created by Roger Ingouacka on 11/04/2021.
//  Copyright (c) 2021 Roger Ingouacka. All rights reserved.
//

import UIKit
import MemeteoClient

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        MemeteoClient.shared.configure(WithBaseURL: "http://api.openweathermap.org/data/2.5/", ApiKey: "5aa8d384afe4769c566762d5e85249ba")
        
//        MemeteoClient.shared.weatherService?.fetchCurrentWeather(city: "Lille", completion: { weather, error in
//            print("WEATHER \(weather?.name)")
//        })
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}


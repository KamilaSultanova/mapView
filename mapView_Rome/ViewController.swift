//
//  ViewController.swift
//  mapView_Rome
//
//  Created by Kamila Sultanova on 23.07.2023.
//

import UIKit
//import MapKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var labelOfPlace: UILabel!
    
    @IBOutlet weak var detailImage: UIImageView!
    
    @IBOutlet weak var metroStation: UILabel!
    @IBOutlet weak var nameOfStation: UILabel!
    
    
    @IBOutlet weak var button: UIButton!
    @IBOutlet weak var detailText: UITextView!
    
    @IBOutlet weak var mapImage: UIImageView!
    
    @IBOutlet weak var location: UILabel!
    
    
    @IBOutlet weak var adress: UITextView!
    
    @IBOutlet weak var afterword: UITextView!
    
    @IBAction func showMap(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let detailMapVC = storyboard.instantiateViewController(withIdentifier: "detailedMapViewController") as! MapViewController
        
        detailMapVC.mapLocations = sights

        navigationController?.show(detailMapVC, sender: button)
        
    }
    
    
    
    var sights = Sights()
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        labelOfPlace.text = sights.place
        detailImage.image = UIImage(named: sights.detailImage)
        mapImage.image = UIImage(named: sights.mapImage)
        nameOfStation.text = sights.station
        detailText.text = sights.detailText
        adress.text = sights.detailAdress
        metroStation.text = "Metro Station"
        location.text = "How to reach it?"
        afterword.text = "Explore the Eternal City and fall in love with it! ❤"

        
    }

}




//
//  DetailViewController.swift
//  Food_Items
//
//  Created by Akshay Yendhe on 02/01/23.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var priceUILabel: UILabel!
    var price : Int?
    @IBOutlet weak var imageView: UIImageView!
    var selectedImage : String?
    override func viewDidLoad() {
        super.viewDidLoad()
       
        //title = selectedImage
        navigationItem.largeTitleDisplayMode = .never
        
        if let imageToLoad = selectedImage{
            imageView.image = UIImage(named: imageToLoad)
        }
        if let price = price {
            priceUILabel.text = "Price:- \(price)"
        }

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
    }
    
    @IBAction func backButtonAction(_ sender: Any) {
        let main = UIStoryboard(name: "Main", bundle: .none)
        let viewController = main.instantiateViewController(withIdentifier: "ViewController") as! ViewController
        self.present(viewController, animated: true)
        
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

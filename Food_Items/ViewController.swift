//
//  ViewController.swift
//  Food_Items
//
//  Created by Akshay Yendhe on 02/01/23.
//

import UIKit

class ViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    let foodItemList = ["Pani Puri","Aloo Tikki", "Kathi Roll", "Pav Bhaji", "Vada Pav", "Chole Bhature", "Biryani", "Paratha","Palak Paneer", "Gulab Jamun"]
    let priceList = [20, 30, 40, 60, 20, 100, 150, 65, 190, 40]
    let foodItemImageList = ["panipuri","tikki", "roll", "pavbhaji", "vadapav", "bhature", "biryani", "paratha","palakpaneer", "gulabjamun"]
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return foodItemList.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "foodItemList", for: indexPath)
        cell.textLabel?.text = foodItemList[indexPath.row]
        return cell
    }
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "DetailViewController") as! DetailViewController
        vc.selectedImage = foodItemImageList[indexPath.row]
        vc.price = priceList[indexPath.row]
        //navigationController?.pushViewController(vc, animated: true)
        self.present(vc, animated: true)
        
    }
    


}


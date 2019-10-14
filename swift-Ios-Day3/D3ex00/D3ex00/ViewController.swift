//
//  ViewController.swift
//  D3ex00
//
//  Created by Piet RAGOLANE on 2019/10/12.
//  Copyright © 2019 Piet RAGOLANE. All rights reserved.
//

import UIKit


class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    
    var images = [AnyObject]()
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 4
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath) as! CollectionViewCell
        
        cell.imageOne.imageFromUrl(urlString: "https://thumbs.dreamstime.com/b/big-data-analytics-concept-connected-devices-information-shared-across-various-locations-network-55725615.jpg")
        
        return cell
    }
    
    @IBOutlet weak var collectionView: UICollectionView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

extension UIImageView {
    public func imageFromUrl(urlString: String) {
        if let url = NSURL(string: urlString) {
            let request = NSMutableURLRequest(url: url as URL)
            request.setValue("<YOUR_HEADER_VALUE>", forHTTPHeaderField: "<YOUR_HEADER_KEY>")
            URLSession.shared.dataTask(with: request as URLRequest) {
                (data, response, error) in
                guard let data = data, error == nil else{
                    NSLog("Image download error: \(String(describing: error))")
                    return
                }

                if let httpResponse = response as? HTTPURLResponse{
                    if httpResponse.statusCode > 400 {
                        let errorMsg = NSString(data: data, encoding: String.Encoding.utf8.rawValue)
                        NSLog("Image download error, statusCode: \(httpResponse.statusCode), error: \(errorMsg!)")
                        return
                    }
                }

            
                self.image = UIImage(data: data)
            }.resume()
        }
    }
}

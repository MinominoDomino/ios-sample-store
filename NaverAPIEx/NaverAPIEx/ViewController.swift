//
//  ViewController.swift
//  NaverAPIEx
//
//  Created by Domino on 10/05/2019.
//  Copyright © 2019 MinominoDomino. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var searchTextField: UITextField!
    @IBOutlet weak var posterImageView: UIImageView!
    @IBOutlet weak var movieTitleLabel: UILabel!
    let jsconDecoder: JSONDecoder = JSONDecoder()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func touchUpSearchUpButton(_ sender: Any) {
        let queryValue: String = searchTextField.text!
        requestAPIToNaver(queryValue: queryValue)
    }
    
    func urlTaskDone() {
        let item = dataManager.shared.searchResult?.items[0]
        
        do {
            let imageURL = URL(string: item!.image)
            let imageData = try Data(contentsOf: imageURL!)
            let posterImage = UIImage(data: imageData)
            OperationQueue.main.addOperation {
                self.posterImageView.image = posterImage
                self.movieTitleLabel.text = item?.title
            }
            
        } catch { }
    }
    
    func requestAPIToNaver(queryValue: String) {
        let clientID: String = "3DOMN3s7MnQABHxtjVLO"
        let clientKEY: String = "3dREeFGVdw"
        
        let query: String  = "https://openapi.naver.com/v1/search/movie.json?query=\(queryValue)"
        let encodedQuery: String = query.addingPercentEncoding(withAllowedCharacters: NSCharacterSet.urlQueryAllowed)!
        let queryURL: URL = URL(string: encodedQuery)!
       
        var requestURL = URLRequest(url: queryURL)
        requestURL.addValue(clientID, forHTTPHeaderField: "X-Naver-Client-Id")
        requestURL.addValue(clientKEY, forHTTPHeaderField: "X-Naver-Client-Secret")
        
        let task = URLSession.shared.dataTask(with: requestURL) { data, response, error in
            guard error == nil else { print(error); return }
            guard let data = data else { print(error); return }
            
            do {
                let searchInfo: SearchResult = try self.jsconDecoder.decode(SearchResult.self, from: data)
                dataManager.shared.searchResult = searchInfo
                self.urlTaskDone()
            } catch {
                print(fatalError())
            }
        }
        task.resume()
    }
}

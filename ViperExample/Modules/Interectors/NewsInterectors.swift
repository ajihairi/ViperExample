//
//  NewsInterectors.swift
//  ViperExample
//
//  Created by Hamzhya on 10/01/19.
//  Copyright © 2019 Hamzhya. All rights reserved.
//

import Foundation
import Alamofire
import ObjectMapper

class NewsInterector: PresenterToInterectorProtocol{
    var presenter: InterectorToPresenterProtocol?;
    
    func FetchNews() {
        print(Constants.URL);
        Alamofire.request(Constants.URL).responseJSON { response in
            if(response.response?.statusCode == 200){
                if let json = response.result.value as AnyObject? {
                    let arrayResponse = json["articles"] as! NSArray
                    let arrayObject = Mapper<NewsModel>().mapArray(JSONArray: arrayResponse as! [[String: Any]]);
                    self.presenter?.NewsFetched(news: arrayObject[0]);
                }
            }
            else {
                self.presenter?.NewsFetchedFailed();
            }
        }
    }
    

}

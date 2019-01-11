//
//  NewsRouter.swift
//  ViperExample
//
//  Created by Hamzhya on 11/01/19.
//  Copyright © 2019 Hamzhya. All rights reserved.
//

import Foundation
import UIKit

class NewsRouter: PresenterToRouterProtocol {
    
    class func createModule() -> UIViewController {
        let view = mainstoryboard.instantiateViewController(withIdentifier: "ViewController") as? ViewController;
        let presenter: ViewToPresenterProtocol & InterectorToPresenterProtocol = NewsPresenter();
        let interector: PresenterToInterectorProtocol = NewsInterector();
        let router: PresenterToRouterProtocol = NewsRouter();
        
        view?.presenter = presenter;
        presenter.view = view;
        presenter.router = router;
        presenter.interector = interector;
        interector.presenter = presenter;
        
        return view!;
        
    }
    
    static var mainstoryboard: UIStoryboard{
        return UIStoryboard(name:"Main",bundle: Bundle.main)
    }
}

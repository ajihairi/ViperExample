//
//  NewsProtocol.swift
//  ViperExample
//
//  Created by Hamzhya on 10/01/19.
//  Copyright © 2019 Hamzhya. All rights reserved.
//

import Foundation
import UIKit

protocol  PresenterToViewProtocol: class {
    func showNews(news: NewsModel);
    func showError();
}

protocol InterectorToPresenterProtocol: class {
    func NewsFetched(news: NewsModel);
    func NewsFetchedFailed();
}

protocol PresenterToInterectorProtocol: class {
    var presenter: InterectorToPresenterProtocol? {get set};
    func FetchNews();
}

protocol PresenterToRouterProtocol: class {
    static func createModule() -> UIViewController
}

protocol  ViewToPresenterProtocol: class {
    var view: PresenterToViewProtocol? {get set};
    var interector: PresenterToInterectorProtocol? {get set};
    var router: PresenterToRouterProtocol? {get set};
    func UpdateView();
}

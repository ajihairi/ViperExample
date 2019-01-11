//
//  NewsPresenter.swift
//  ViperExample
//
//  Created by Hamzhya on 10/01/19.
//  Copyright © 2019 Hamzhya. All rights reserved.
//

import Foundation

class NewsPresenter: ViewToPresenterProtocol {
    
    var view: PresenterToViewProtocol?
    var interector: PresenterToInterectorProtocol?
    var router: PresenterToRouterProtocol?
    
    func UpdateView() {
        interector?.FetchNews();
    }
}

extension NewsPresenter: InterectorToPresenterProtocol {
    func NewsFetched(news: NewsModel) {
        view?.showNews(news: news);
    }
    
    func NewsFetchedFailed() {
        view?.showError();
    }
    
}

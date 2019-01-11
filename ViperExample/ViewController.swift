//
//  ViewController.swift
//  ViperExample
//
//  Created by Hamzhya on 10/01/19.
//  Copyright © 2019 Hamzhya. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var presenter: ViewToPresenterProtocol?
    
    
    @IBOutlet weak var newsLabel: UILabel!
    @IBOutlet weak var sourceLabel: UILabel!
    @IBOutlet weak var DescriptionText: UITextView!
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)!
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        presenter?.UpdateView();
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning();
    }
}

extension ViewController: PresenterToViewProtocol{
    func showNews(news: NewsModel) {
        newsLabel.text = news.news;
        sourceLabel.text = news.source;
        DescriptionText.text = news.description;
    }
    
    func showError() {
        let alert = UIAlertController(title: "warning!", message: "failed to load news", preferredStyle: UIAlertController.Style.alert)
        alert.addAction(UIAlertAction(title: "okay", style: UIAlertAction.Style.default, handler: nil))
        self.present(alert, animated: true, completion: nil)
    }
    
    
}


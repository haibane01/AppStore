//
//  AppDetailViewController.swift
//  AppStore
//
//  Created by Sang Tae Kim on 2017. 3. 24..
//  Copyright © 2017년 haibane. All rights reserved.
//

import UIKit

class AppDetailViewController: UIViewController, AppDetailViewProtocol {
    var appDetailViewPresenter: AppDetailViewPresenterProtocol?
    @IBOutlet weak var tableView: UITableView?
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        appDetailViewPresenter?.viewDidLoad()
        self.configureTableView()
    }
    private func configureTableView() {
        tableView?.estimatedRowHeight = 80
        tableView?.rowHeight = UITableViewAutomaticDimension
        tableView?.tableFooterView = UIView()
        tableView?.register(UINib(nibName: "AppDetailHeaderViewCell", bundle: nil), forCellReuseIdentifier: "AppDetailHeaderViewCell")
        tableView?.register(UINib(nibName: "ScreenshotImageCell", bundle: nil), forCellReuseIdentifier: "ScreenshotImageCell")
        tableView?.register(UITableViewCell.self, forCellReuseIdentifier: "UITableViewCell")
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func show(from appDetail:AppDetailType?)
    {
        tableView?.reloadData()
    }
}


extension AppDetailViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: false)
    }
}

extension AppDetailViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        switch indexPath.row {
        case 0:
            let cell = tableView.dequeueReusableCell(withIdentifier: "AppDetailHeaderViewCell", for: indexPath) as! AppDetailHeaderViewCell
            if let appDetil = self.appDetailViewPresenter?.appDetail
            {
                cell.configure(with: appDetil)
            }
            return cell
        case 1:
            let cell = tableView.dequeueReusableCell(withIdentifier: "ScreenshotImageCell", for: indexPath) as! ScreenshotImageCell
            if let appDetil = self.appDetailViewPresenter?.appDetail
            {
                cell.configure(with: appDetil.images)
            }
            return cell
        default:
            let cell = tableView.dequeueReusableCell(withIdentifier: "UITableViewCell", for: indexPath)
            return cell
        }
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.row == 1 {
            return UIScreen.main.bounds.height
        }
        return UITableViewAutomaticDimension
    }
    
    func tableView(_ tableView: UITableView, estimatedHeightForRowAt indexPath: IndexPath) -> CGFloat
    {
        switch indexPath.row {
        case 0:
            return 80
        case 1:
            return UIScreen.main.bounds.height
        default:
            return 44
        }
    }

}

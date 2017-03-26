//
//  AppDetailViewController.swift
//  AppStore
//
//  Created by Sang Tae Kim on 2017. 3. 24..
//  Copyright © 2017년 haibane. All rights reserved.
//

import UIKit

final class AppDetailViewController: UIViewController, AppDetailViewProtocol {
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
        tableView?.register(UINib(nibName: "AppDetailHeaderViewCell", bundle: nil), forCellReuseIdentifier: "AppDetailHeaderViewCell")
        tableView?.register(UINib(nibName: "ScreenshotImageCell", bundle: nil), forCellReuseIdentifier: "ScreenshotImageCell")
        tableView?.register(UINib(nibName: "DynamicHeightTextCell", bundle: nil), forCellReuseIdentifier: "DynamicHeightTextCell")
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
    func numberOfSections(in tableView: UITableView) -> Int {
        return appDetailViewPresenter?.sectionCount ?? 0
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return appDetailViewPresenter?.rowCount(section: section) ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let section = AppDetailViewSection(rawValue: indexPath.section)
        {
            switch  section {
            case .header:
                let cell = tableView.dequeueReusableCell(withIdentifier: "AppDetailHeaderViewCell", for: indexPath) as! AppDetailHeaderViewCell
                if let appDetil = self.appDetailViewPresenter?.appDetail
                {
                    cell.configure(with: appDetil)
                }
                return cell
            case .screenshot:
                let cell = tableView.dequeueReusableCell(withIdentifier: "ScreenshotImageCell", for: indexPath) as! ScreenshotImageCell
                if let appDetil = self.appDetailViewPresenter?.appDetail
                {
                    cell.configure(with: appDetil.images)
                }
                return cell
            case .description:
                let cell = tableView.dequeueReusableCell(withIdentifier: "DynamicHeightTextCell", for: indexPath) as! DynamicHeightTextCell
                if let appDetil = self.appDetailViewPresenter?.appDetail
                {
                    let textConfig = TextConfig(font: UIFont.systemFont(ofSize: 13), fontColor: UIColor.darkGray)
                    cell.textConfig = textConfig
                    cell.configureText(text: appDetil.detailDescription)
                }
                return cell
            }
        } else {
            let cell = tableView.dequeueReusableCell(withIdentifier: "UITableViewCell", for: indexPath)
            return cell
        }
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if let section = AppDetailViewSection(rawValue: indexPath.section)
        {
            if section == .screenshot {
                return UIScreen.main.bounds.height
            }
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

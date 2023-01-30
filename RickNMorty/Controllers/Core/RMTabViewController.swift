//
//  ViewController.swift
//  RickNMorty
//
//  Created by huygur on 30.01.2023.
//

import UIKit

final class RMTabViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setUpTabs()
    }
    
    private func setUpTabs() {
        let characterVC = RMCharacterViewController()
        let locationVC = RMLocationViewController()
        let episodesVC = RMEpisodeViewController()
        let settingsVC = RMSettingsViewController()
        
        characterVC.navigationItem.largeTitleDisplayMode = .automatic
        locationVC.navigationItem.largeTitleDisplayMode = .automatic
        episodesVC.navigationItem.largeTitleDisplayMode = .automatic
        settingsVC.navigationItem.largeTitleDisplayMode = .automatic
        
        let navChar = UINavigationController(rootViewController: characterVC)
        let navLoc = UINavigationController(rootViewController: locationVC)
        let navEp = UINavigationController(rootViewController: episodesVC)
        let navSet = UINavigationController(rootViewController: settingsVC)
        
        navChar.tabBarItem = UITabBarItem(title: "Characters",
                                          image: UIImage(systemName: "person"),
                                          tag: 1)
        navLoc.tabBarItem = UITabBarItem(title: "Locations",
                                          image: UIImage(systemName: "location"),
                                          tag: 2)
        navEp.tabBarItem = UITabBarItem(title: "Episodes",
                                          image: UIImage(systemName: "tv"),
                                          tag: 3)
        navSet.tabBarItem = UITabBarItem(title: "Settings",
                                          image: UIImage(systemName: "gear"),
                                          tag: 4)
        
        for nav in [navChar, navLoc, navEp, navSet] {
            nav.navigationBar.prefersLargeTitles = true
        }
        
        setViewControllers(
            [navChar, navLoc, navEp, navSet],
            animated: true
        )
        
    }

}


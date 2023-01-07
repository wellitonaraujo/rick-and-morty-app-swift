//
//  ViewController.swift
//  RickAndMorty
//
//  Created by Welliton da Conceicao de Araujo on 30/12/22.
//

import UIKit

final class TabViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .red
        setUpTabs()
    }
    
    private func setUpTabs(){
        let charactersVC = CharacterViewController()
        let locationsVC = LocationViewController()
        let episodesVC = EpisodeViewController()
        let settingsVC = SettingsViewController()
        
        charactersVC.navigationItem.largeTitleDisplayMode = .automatic
        locationsVC.navigationItem.largeTitleDisplayMode = .automatic
        episodesVC.navigationItem.largeTitleDisplayMode = .automatic
        settingsVC.navigationItem.largeTitleDisplayMode = .automatic
        
        let navCharacters = UINavigationController(rootViewController: charactersVC)
        let navLocations = UINavigationController(rootViewController: locationsVC)
        let navEpisodios = UINavigationController(rootViewController: episodesVC)
        let navSettings = UINavigationController(rootViewController: settingsVC)
        
        navCharacters.tabBarItem = UITabBarItem(title: "Characters",
                                                image: UIImage(systemName: "person"),
                                                tag: 1)
        
        navLocations.tabBarItem = UITabBarItem(title: "Locations",
                                                image: UIImage(systemName: "globe"),
                                                tag: 2)
        
        navEpisodios.tabBarItem = UITabBarItem(title: "Episodes",
                                                image: UIImage(systemName: "tv"),
                                                tag: 3)
        
        navSettings.tabBarItem = UITabBarItem(title: "Settings",
                                                image: UIImage(systemName: "gear"),
                                                tag: 4)
        
        for nav in [navCharacters, navLocations, navEpisodios, navSettings] {
            nav.navigationBar.prefersLargeTitles = true
        }
        setViewControllers([navCharacters,
                            navLocations,
                            navEpisodios,
                            navSettings],
                           animated: true)
    }

}


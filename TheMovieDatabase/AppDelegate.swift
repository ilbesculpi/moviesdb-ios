//
//  AppDelegate.swift
//  TheMovieDatabase
//
//  Created by Ilbert Esculpi on 2/7/18.
//  Copyright © 2018 Ilbert Esculpi. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        
        // Configure root controllers
        configureRootControllers();
        
        return true;
    }

    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }

    // MARK: - Custom Helpers
    
    /**
     * Returns the root controller in the Movies tab.
     */
    var moviesViewController: HomeViewController {
        get {
            let tabBarController = window?.rootViewController as! UITabBarController;
            let navController = tabBarController.viewControllers![0] as! UINavigationController;
            let moviesController = navController.viewControllers.first as! HomeViewController;
            return moviesController;
        }
    };
    
    /**
     * Returns the root controller in the TV Shows tab.
     */
    var seriesViewController: HomeViewController {
        get {
            let tabBarController = window?.rootViewController as! UITabBarController;
            let navController = tabBarController.viewControllers![1] as! UINavigationController;
            let tvShowsController = navController.viewControllers.first as! HomeViewController;
            return tvShowsController;
        }
    };
    
    /**
     * Configures the controllers on each tab.
     */
    private func configureRootControllers() {
        // TAB Movies
        HomeConfigurator.configure(moviesViewController, section: .movies);
        // TAB TV Shows
        HomeConfigurator.configure(seriesViewController, section: .tvShows);
    }

}


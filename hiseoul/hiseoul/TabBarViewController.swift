//
//  TabBarViewController.swift
//  hiseoul
//
//  Created by 박태준 on 2017. 10. 26..
//  Copyright © 2017년 SeoulAppContest. All rights reserved.
//

import UIKit

class TabBarViewController: UITabBarController, UITabBarControllerDelegate {
    
        override func viewDidLoad() {
            super.viewDidLoad()
            // Do any additional setup after loading the view.
            self.delegate = self
            self.navigationController?.navigationBar.barTintColor = UIColor.white
            self.navigationController?.navigationBar.tintColor = UIColor.mainColor
        }
        
        override func viewWillAppear(_ animated: Bool) {
            super.viewWillAppear(animated)
            
            // Create Tab one
            let tabOne = MainViewController()
            let tabOneBarItem = UITabBarItem(title: "Main", image: UIImage(named: "nav_ic_main_on"), selectedImage: UIImage(named: "nav_ic_main_on"))
            tabOne.tabBarItem = tabOneBarItem
            
            
            // Create Tab two
            let tabTwo = GuideViewController()
            let tabTwoBarItem = UITabBarItem(title: "Guide", image: UIImage(named: "nav_ic_guide_on"), selectedImage: UIImage(named: "nav_ic_guide_on"))
            
            tabTwo.tabBarItem = tabTwoBarItem
            
            // Create Tab Three
            let tabThree = MySeoulViewController()
            let tabThreeBarItem = UITabBarItem(title: "My Seoul", image: UIImage(named: "nav_ic_myseoul_on"), selectedImage: UIImage(named: "nav_ic_myseoul_on"))
            
            tabThree.tabBarItem = tabThreeBarItem
            
            // Create Tab Four
            let tabFour = StampViewController()
            let tabFourBarItem = UITabBarItem(title: "Stamp", image: UIImage(named: "nav_ic_stamp_on"), selectedImage: UIImage(named: "nav_ic_stamp_on"))
            
            tabFour.tabBarItem = tabFourBarItem
            
            // Create Tab Five
            let tabFive = SettingViewController()
            let tabFiveBarItem = UITabBarItem(title: "Setting", image: UIImage(named: "nav_ic_setting_on"), selectedImage: UIImage(named: "nav_ic_setting_on"))
            
            tabFive.tabBarItem = tabFiveBarItem
            
            self.viewControllers = [tabOne, tabTwo, tabThree, tabFour, tabFive]
            self.tabBarController?.selectedIndex = 1
            self.tabBar.unselectedItemTintColor = UIColor(red: 23/255, green: 138/255, blue: 113/255, alpha: 1)
            self.tabBar.tintColor = UIColor.white
            self.tabBar.barTintColor = UIColor.mainColor
            
        }
        
        func tabBarController(_ tabBarController: UITabBarController, didSelect viewController: UIViewController) {
            print("Selected", viewController.title ?? "Ureka")
        }
        
        override func didReceiveMemoryWarning() {
            super.didReceiveMemoryWarning()
            // Dispose of any resources that can be recreated.
        }


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

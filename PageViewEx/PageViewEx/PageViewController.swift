//
//  PageViewController.swift
//  PageViewEx
//
//  Created by Domino on 11/05/2019.
//  Copyright © 2019 MinominoDomino. All rights reserved.
//

import UIKit

class PageViewController: UIPageViewController, UIPageViewControllerDelegate, UIPageViewControllerDataSource {
    
    lazy var subViewController: [UIViewController] = {
        return [
            UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "Page1ViewController") ,
            UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "Page2ViewController")
        ]
    }()
    
    
    
    func presentationCount(for pageViewController: UIPageViewController) -> Int {
        return subViewController.count
    }
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
          print("5")
        guard let viewControllerIndex = subViewController.firstIndex(of: viewController) else {
              print("6")
            return nil
        }
          print("7")
        let preIndex = viewControllerIndex - 1
        if preIndex <= 0 {
              print("8")
            return nil
        }
        print("preIndex: \(preIndex)")
        return subViewController[preIndex]
    }
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
        print("1")
        guard let viewControllerIndex = subViewController.firstIndex(of: viewController) else {
              print("2")
            return nil
        }
        let nextIndex = viewControllerIndex + 1
          print("3")
        print("nex ondex: \(nextIndex)")
        if nextIndex > subViewController.count-1 {
              print("4")
            return subViewController.first
        }
        print("nextIndex: \(nextIndex)")
        return subViewController[nextIndex]
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        self.dataSource = self
        self.delegate = self
        
        setViewControllers([subViewController[0]], direction: .forward, animated: false, completion: nil)
        print("cout: \(subViewController.count)")

        // Do any additional setup after loading the view.
    }
 
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

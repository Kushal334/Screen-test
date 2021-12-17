Screen 2

func createTabBarController() {
        let tabBarCnt = UITabBarController()
        tabBarCnt.tabBar.tintColor = UIColor.black
        self.view.addSubview(tabBarCnt.view)
    }

 override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        createTabBarController()
    }

func createTabBarController() {
        
        let tabBarCnt = UITabBarController()
        tabBarCnt.tabBar.tintColor = UIColor.black

        let firstVc = UIViewController()
        firstVc.title = "First"
        let secondVc = UIViewController()
        secondVc.title = "Second"
        tabBarCnt.viewControllers = [firstVc, secondVc]
        
        self.view.addSubview(tabBarCnt.view)
    }

func createTabBarController() {
        
        let tabBarCnt = UITabBarController()
        tabBarCnt.tabBar.tintColor = UIColor.black

        let firstVc = UIViewController()
        firstVc.title = "First"
        firstVc.tabBarItem = UITabBarItem.init(title: "Home", image: UIImage(named: "HomeTab"), tag: 0)
        let secondVc = UIViewController()
        secondVc.title = "Second"
        secondVc.tabBarItem = UITabBarItem.init(title: "Location", image: UIImage(named: "Location"), tag: 0)

        tabBarCnt.viewControllers = [firstVc, secondVc]
        
        self.view.addSubview(tabBarCnt.view)
    }

import UIKit

class ViewController: UIViewController {

    let tabBarCnt = UITabBarController()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        tabBarCnt.tabBar.tintColor = UIColor.black
        createTabBarController()
    }

    override func didReceiveMemoryWarning() {
super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


      func createTabBarController() {
    
        let firstVc = UIViewController()
        firstVc.title = "First"
        firstVc.view.backgroundColor =  UIColor.red
        firstVc.tabBarItem = UITabBarItem.init(title: "Home", image: UIImage(named: "HomeTab"), tag: 0)
        
        let secondVc = UIViewController()
        secondVc.title = "Second"
        secondVc.view.backgroundColor =  UIColor.green
        secondVc.tabBarItem = UITabBarItem.init(title: "Location", image: UIImage(named: "Location"), tag: 1)
let controllerArray = [firstVc, secondVc]
        tabBarCnt.viewControllers = controllerArray.map{ UINavigationController.init(rootViewController: $0)}
        
        self.view.addSubview(tabBarCnt.view)
    }
    
}
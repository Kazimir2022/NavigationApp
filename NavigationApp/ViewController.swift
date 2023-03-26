//
//  ViewController.swift
//  NavigationApp
//
//  Created by Kazimir on 26.03.23.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    // Ссылка на сториборд, где размещен данный ViewController
    let storyboardInstance = UIStoryboard(name: "Main", bundle: nil)

    
    // перейти к зеленой сцене
    @IBAction func toGreenScene(_ sender: UIButton) {
        // получаем ссылку на следующий контроллер(на экземпляр связанного класса)
        // в данном случае следующий - это зеленый
        //let nextViewController - экзепляр класса ViewController
        let nextViewController = storyboardInstance.instantiateViewController(withIdentifier: "greenViewController")
        // обращаемся к Navigation Controller
        // и вызываем метод перехода к новому контроллеру
            //если сцена выводится внутри Navigation Controller, вы можете обратиться к свойству navigationController, если нет - nil!!
        
        
        self.navigationController?.pushViewController(nextViewController, animated: true)
      //  pushViewController(_:animated:) добавляет View Controller в навигационный стек и отображает соответствующую ему сцену на экране
        
        
    }
    
    
    // перейти к желтой сцене
    @IBAction func toYellowScene(_ sender: UIButton) {
        let nextViewController = storyboardInstance.instantiateViewController(withIdentifier: "yellowViewController")
        self.navigationController?.pushViewController(nextViewController, animated: true)
    }
    
    
    // перейти к корневой сцене
    @IBAction func toRootScene(_ sender: UIButton) {
        // обращаемся к Navigation Controller
        // и вызываем метод перехода к корневому контроллеру
        self.navigationController?.popToRootViewController(animated: true)
      //  popToRootViewController(animated:)  удаляет все контроллеры из навигационного стека и производит переход к корневой сцене.
    }
    
    
    // перейти к предыдущему экрану
    @IBAction func toPreviousScene(_ sender: UIButton) {    self.navigationController?.popViewController(animated: true)
    }
    
    
}


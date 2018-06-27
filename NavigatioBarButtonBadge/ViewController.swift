import UIKit

class ViewController: UIViewController {

    
    @IBOutlet var itemButton: BadgeBarButtonItem!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

      
      itemButton = BadgeBarButtonItem(button: UIButton(type: .system), target: self, action: #selector(chatButtonTapped))
        
        let button1 = BadgeBarButtonItem(image: "chat", target: self, action: #selector(chatButtonTapped))!


        navigationItem.rightBarButtonItems = [itemButton, button1]

        
        DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
            self.itemButton.badgeText = "8"
            self.itemButton.badgeFontColor = .white
            self.itemButton.badgeBackgroundColor = .red
            button1.badgeText = "test"
            button1.badgeText = "8"

        }
        
        
        
    }


    @objc func chatButtonTapped() {
        
    }

}


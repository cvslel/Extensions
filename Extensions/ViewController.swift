//
//  ViewController.swift
//  Extensions
//
//  Created by Cenker Soyak on 26.09.2023.
//

import UIKit

class ViewController: UIViewController {
    var cenker = "kayak"
    var cenker2 = "Maket"
    var myNumber = 2
    var myNumber2 = 5
    var myNumber3 = 23
    var myNumber4 = 24
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print(cenker.isPalindrome())
        print(myNumber.isPrime())
        print(myNumber2.isPrime())
        print(myNumber3.isPrime())
        print(myNumber4.isPrime())
    }
}

//First Task
extension String {
    func isPalindrome() -> Bool {
        return self == String(self.reversed()) ? true : false
    }
}

//Second Task
extension Int {
    func isPrime() -> Bool {
        if self == 2{
            return true
        }
        return ((self % 2) != 0) ? true : false
    }
}

//Third Task
extension Bool {
    mutating func isToggle(){
        self = !self
    }
}

//Fourth Task
extension Date {
    func differenceInDates(from date: Date) -> Int{
        let calendar = Calendar.current
        let components = calendar.dateComponents([.day], from: self, to: date)
        return components.day ?? 0
    }
}

//Fifth Task
extension UIViewController {
    func changeColor(color: UIColor){
        self.view.backgroundColor = color
    }
}

extension UILabel {
    func changeText(text: String, color: UIColor){
        self.text = text
        self.textColor = color
    }
}

extension UIImage {
    func changeImage(image: UIImage){
    }
}

extension UIButton {
    func changeEverything(title: String,color: UIColor) {
        self.titleLabel?.text = title
        self.backgroundColor = color
    }
}

/* //FifthTask - Probably true way
func changeEverything(background: UIColor, text: String, image: String){
    view.backgroundColor = background
    label1.text = text
    imageview.image = UIImage(named: image)
}
*/

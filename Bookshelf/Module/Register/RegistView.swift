//
//  RegistView.swift
//  Bookshelf
//
//  Created by Ivan Pushkov on 15.01.2025.
//

import UIKit

protocol RegistViewProtocol:AnyObject, BaseViewProtocol{
    
}
class RegistView: UIViewController, RegistViewProtocol {
    typealias PresenterType = RegistViewPresenterProtocol
    var presenter: PresenterType?
    

    override func viewDidLoad() {
        super.viewDidLoad()

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

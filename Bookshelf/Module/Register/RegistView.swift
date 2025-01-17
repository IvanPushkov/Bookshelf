//
//  RegistView.swift
//  Bookshelf
//
//  Created by Ivan Pushkov on 15.01.2025.
//

import UIKit
import SwiftUI

protocol RegistViewProtocol:AnyObject, BaseViewProtocol{
    
}

class RegistView: UIViewController, RegistViewProtocol {
    typealias PresenterType = RegistViewPresenterProtocol
    var presenter: PresenterType?
    

    override func viewDidLoad() {
        super.viewDidLoad()
        let contentView = RegistViewContent(){
            print($0)
        }
        let content = UIHostingController(rootView: contentView)
        self.addChild(content)
        content.view.frame = view.frame
        view.addSubview(content.view)
        content.didMove(toParent: self)
    }

}

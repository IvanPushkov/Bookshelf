//
//  RegistPresenter.swift
//  Bookshelf
//
//  Created by Ivan Pushkov on 15.01.2025.
//

import Foundation

protocol RegistViewPresenterProtocol: AnyObject{
    
}

class RegistPresenter: RegistViewPresenterProtocol{
    
   weak var view: (any RegistViewProtocol)?
    
    init(view: any RegistViewProtocol) {
        self.view = view
    }
}

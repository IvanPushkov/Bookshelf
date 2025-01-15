
import UIKit

protocol BaseViewProtocol{
    associatedtype PresenterType
    var presenter: PresenterType? {get set}
}

class Builder{
    static private func createView<View: UIViewController & BaseViewProtocol>(view: View.Type, presenter: (View) -> View.PresenterType) -> UIViewController{
        let view = View()
        let presernter = presenter(view)
        return view
    }
}

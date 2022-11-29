import UIKit

class ReminderListViewController: UICollectionViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let listLayout = listLayout()
        collectionView.collectionViewLayout = listLayout
    }
    
    func listLayout() -> UICollectionViewLayout {
        var listConfigutration = UICollectionLayoutListConfiguration(appearance: .grouped)
        listConfigutration.showsSeparators = false
        listConfigutration.backgroundColor = .clear
        return UICollectionViewCompositionalLayout.list(using: listConfigutration)
    }

}


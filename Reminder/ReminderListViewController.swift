import UIKit

class ReminderListViewController: UICollectionViewController {    
    override func viewDidLoad() {
        super.viewDidLoad()
        let listLayout = listLayout()
        collectionView.collectionViewLayout = listLayout
        
        let cellRegistration = UICollectionView.CellRegistration { (cell: UICollectionViewListCell, indexPath: IndexPath, itemIdentifier: String) in
            let reminder = Reminder.sampleData[indexPath.item]
            var contentConfiguration = cell.defaultContentConfiguration()
            contentConfiguration.text = reminder.title
            cell.contentConfiguration = contentConfiguration
        }
    }
    
    func listLayout() -> UICollectionViewLayout {
        var listConfigutration = UICollectionLayoutListConfiguration(appearance: .grouped)
        listConfigutration.showsSeparators = false
        listConfigutration.backgroundColor = .clear
        return UICollectionViewCompositionalLayout.list(using: listConfigutration)
    }

}


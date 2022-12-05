import UIKit

extension ReminderListViewController {
    
    func didPressDoneBUtton(_ sender: ReminderDoneButton) {
        guard let id = sender.id else { return }
        completeReminder(with: id)
    }
}

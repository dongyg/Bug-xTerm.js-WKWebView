//
//  IndexController.swift
//  Bug-xTerm.js-WKWebView
//
//  Created by dongyg on 2021-11-04.
//

import UIKit
import SafariServices

class IndexController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - Table view data source
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if indexPath.row == 0 {
            let vc = WebViewController()
            self.navigationController?.pushViewController(vc, animated: true)
        } else if indexPath.row == 1 {
            let safariVC = SFSafariViewController(url: URL(string: "https://xtermjs.org/")!)
            self.present(safariVC, animated: true, completion: {})
        }
    }

}

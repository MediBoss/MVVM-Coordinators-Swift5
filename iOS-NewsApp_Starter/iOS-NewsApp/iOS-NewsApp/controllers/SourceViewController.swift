//
//  SourceViewController.swift
//  FinalAssessmentMOB1.3
//
//  Created by Thomas Vandegriff on 3/4/19.
//  Copyright © 2019 Make School. All rights reserved.
//

import UIKit

class SourceViewController: UITableViewController {
    
    var sources: [SourceItem] = []
    var sourceItemViewModels = [SourceViewModel]()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        SourceItemService.shared.fetchSources { (response) in
            
            self.sourceItemViewModels = response.sources.map({ return SourceViewModel(source: $0)})
        }
    }

    
    //MARK: UITableViewDataSource delegate functions
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return sourceItemViewModels.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
   
        let cell = tableView.dequeueReusableCell(withIdentifier: "newsFeedCell", for: indexPath) as! NewsFeedCell

        cell.sourceItem = sources[indexPath.row]
        return cell
    }
}

extension String
{
    func encodeUrl() -> String?
    {
        return self.addingPercentEncoding( withAllowedCharacters: NSCharacterSet.urlQueryAllowed)
    }
    func decodeUrl() -> String?
    {
        return self.removingPercentEncoding
    }
}
    


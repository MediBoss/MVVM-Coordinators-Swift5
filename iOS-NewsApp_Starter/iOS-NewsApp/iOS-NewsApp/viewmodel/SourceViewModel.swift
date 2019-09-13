//
//  SourceViewModel.swift
//  iOS-NewsApp
//
//  Created by Medi Assumani on 9/12/19.
//  Copyright © 2019 Make School. All rights reserved.
//

import Foundation

class SourceViewModel {
    
    var sourceItem: SourceItem
    
    init(source: SourceItem) {
        self.sourceItem = source
    }
    
    func makeApi() {
        
        SourceItemService.shared.fetchSources { (reponse) in
            
        }
    }
}

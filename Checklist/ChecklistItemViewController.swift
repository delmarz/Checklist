//
//  ViewController.swift
//  Checklist
//
//  Created by Shadez Prado on 09/10/2016.
//  Copyright © 2016 Team Delmarz. All rights reserved.
//

import UIKit

class ChecklistItemViewController: UITableViewController {

    var items: [ChecklistItem]
    
    required init?(coder aDecoder: NSCoder) {
        
        items = [ChecklistItem]()
        
        let row0Index = ChecklistItem()
        row0Index.text = "this is row 0 index"
        row0Index.checked = false
        items.append(row0Index)
        
        let row1Index = ChecklistItem()
        row1Index.text = "this is row 1 index"
        row1Index.checked = false
        items.append(row1Index)
        
        let row2Index = ChecklistItem()
        row2Index.text = "this is row 2 index"
        row2Index.checked = false
        items.append(row2Index)
        
        let row3Index = ChecklistItem()
        row3Index.text = "this is row 3 index"
        row3Index.checked = false
        items.append(row3Index)
        
        let row4Index = ChecklistItem()
        row4Index.text = "this is row 4 index"
        row4Index.checked = false
        items.append(row4Index)
        
        super.init(coder: aDecoder)
    }
    
    // MARK: - View life cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // MARK: - UITableView Data Source
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ItemCell", for: indexPath)
        
        return cell
    }

}


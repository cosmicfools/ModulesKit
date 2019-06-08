//
//  FirstModuleSnapshotTestCase.swift
//  FTMTableSectionModules_Tests
//
//  Created by Francisco Javier Trujillo Mata on 08/06/2019.
//  Copyright © 2019 FJTRUJY. All rights reserved.
//

import FBSnapshotTestCase
import FTMTableSectionModules

@testable import FTMTableSectionModules_Example

class FirstModuleSnapshotTestCase: FBSnapshotTestCase, ModulesHelperTestsViewControllerDelegate {
    
    let modulesHelperVC = ModulesHelperTestsViewController()
    
    override func setUp() {
        super.setUp()
        recordMode = false;
        
        modulesHelperVC.modulesDelegate = self
    }
    
    func testPortraitLayout() {
        modulesHelperVC.adjustToFitScreen(orientation: .portrait)
        FBSnapshotVerifyView(modulesHelperVC.view)
    }
    
    func testLandscapeLayout() {
        modulesHelperVC.adjustToFitScreen(orientation: .landscapeLeft)
        FBSnapshotVerifyView(modulesHelperVC.view)
    }
    
}

// Mark - ModulesHelperTestsViewControllerDelegate
extension FirstModuleSnapshotTestCase {
    func helperTestViewController(modulesHelperTest: ModulesHelperTestsViewController, tableView: UITableView) -> Array<TableSectionModule> {
        return [
            FirstSectionModule(tableView: tableView)
        ]
    }
}

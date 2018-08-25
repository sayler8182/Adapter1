//
//  DashboardPresenter.swift
//  Adapters
//
//  Created by Konrad on 25/08/2018.
//  Copyright © 2018 Konrad. All rights reserved.
//

import Foundation

protocol DashboardPresenterProtocol: class {
    var view: DashboardViewProtocol { get }
    var adapter: AdapterProtocol    { get }
}

class DashboardPresenter: DashboardPresenterProtocol {
    let view: DashboardViewProtocol
    let adapter: AdapterProtocol
    
    init(view: DashboardViewProtocol,
         adapter: AdapterProtocol) {
        self.view = view
        self.adapter = adapter
        
        // data source
        let presenters: [ItemPresenter] = [
            CellPresenter(model: "One"),
            CellPresenter(model: "Two"),
            CellPresenter(model: "Three")
        ]
        self.adapter.set(presenters: presenters)
    }
}

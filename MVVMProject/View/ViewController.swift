//
//  ViewController.swift
//  MVVMProject
//
//  Created by Phillippi Areias Aguiar on 1/16/21.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var labelTitulo: UILabel!
    @IBOutlet weak var tableView: UITableView!
    
    var model: ViewModel = ViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        bind()
        model.loadMovie()
        tableView.dataSource = self
    }
    func bind() {
        model.viewData.bind { (viewData) in
            DispatchQueue.main.async {
            self.tableView.reloadData()
            }
        }
    }
}
extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return model.numberOfRows()
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celula = tableView.dequeueReusableCell(withIdentifier: "celula", for: indexPath)
        celula.textLabel?.text = model.cellForRow()[indexPath.row].name
        return celula
    }
}

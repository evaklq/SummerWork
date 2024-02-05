//
//  TableViewController.swift
//  Project
//
//  Created by Федор Дюльдев on 09.07.2023.
//

import UIKit

final class TableViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
   
    
    
    @IBOutlet weak var tableView: UITableView!
    
    
    private let data: [ListTableViewData] = [
    ListTableViewData(title: "Салат с сыром буррата", image: UIImage(named: "Салат с сыром Буррата")!),
    ListTableViewData(title: "Овощной салат", image: UIImage(named: "vegetableSalad")!),
    ListTableViewData(title: "Вегатарианский суп", image: UIImage(named: "vegetarianSoup")!),
    ListTableViewData(title: "Грибной суп", image: UIImage(named: "mushroomsSoup")!),
    ListTableViewData(title: "Запеченные перцы", image: UIImage(named: "peppers")!),
    ListTableViewData(title: "Фаршированные кабачки", image:UIImage(named: "zucchini")!),
    ListTableViewData(title: "Маринованные огурцы", image: UIImage(named: "cucumbers")!),
    ListTableViewData(title: "Томаты черри с кунжутом", image:UIImage(named: "cherryTomatos")!),
    ListTableViewData(title: "Сырники без сахара", image:UIImage(named: "cheesecakes")!),
    
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = self
        tableView.delegate = self
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let title = data[indexPath.row].title
        guard let vc = storyboard?.instantiateViewController(withIdentifier: "NewmainViewController")as? NewmainViewController else { return }
        
        vc.loadViewIfNeeded()
        vc.setUp(tittle: title)
      
       
        navigationController?.pushViewController(vc , animated: true)
         
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        200
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "ListTableViewCell") as? ListTableViewCell  else { return UITableViewCell() }
        
        cell.setUp(data[indexPath.row])
        
        return cell
    }
    
    
}

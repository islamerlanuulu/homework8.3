//
//  SecondViewController.swift
//  homework8.3
//
//  Created by Islam Erlan Uulu on 5/5/23.
//

import UIKit


class SecondViewController: UIViewController {
    let cellID = "cell"
    private let searchProduct: UILabel = {
        let label = UILabel()
        label.text = "Поиск продукта"
        label.font = .italicSystemFont(ofSize: 20)
        label.textColor = #colorLiteral(red: 0.1516217291, green: 0.1519648433, blue: 0.1622371376, alpha: 1)
        return label
    }()
    
    
    
     let tableView = UITableView()
     let searchBar: UISearchBar = {
        let searchBar = UISearchBar()
        searchBar.placeholder = "Поиск"
        return searchBar
    }()
    
    let foods: [Foods] = [Foods(foodImg1: "burgers", labelBigNameFood1: "Burger Craze", labelTime1: "15-20min", labelOtcenka1: "4.6", labelCountry1: "American", labelTypeFood1: "•  Burger", labelDelivery1: "Delivery: FREE", labelPrice1: "•  Minimum: $10", labelKM1: "1.5 km away"),
       Foods(foodImg1: "pizza", labelBigNameFood1: "Vegetarian Pizza", labelTime1: "10-15min", labelOtcenka1: "3.5", labelCountry1: "Italian", labelTypeFood1: "•  Pizza", labelDelivery1: "Delivery: FREE", labelPrice1: "•  Minimum: $20", labelKM1: "2.5 km away"),
    Foods(foodImg1: "besh", labelBigNameFood1: "Besh Barmak", labelTime1: "30-40min", labelOtcenka1: "10.0", labelCountry1: "Kyrgyzstan", labelTypeFood1: "•  Besh Barmak", labelDelivery1: "Delivery: FREE" , labelPrice1: "•  Minimum: $50", labelKM1: "1 km away")
                          
    ]

    
     var filtrList: [Foods] = []
     var isFiltr: Bool = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        view.addSubview(searchProduct)
        view.addSubview(searchBar)
        view.addSubview(tableView)
        

        
        
    tableView.register(CustomTableViewCell.self, forCellReuseIdentifier: "cell")
      tableView.dataSource = self
        tableView.delegate = self
      searchBar.delegate = self
        
       makeConstraints()
       
        
        
    }
    
    
    
    private func makeConstraints(){
        tableView.snp.makeConstraints { make in
            make.top.equalTo(searchBar.snp.bottom).offset(13)
            make.bottom.leading.trailing.equalToSuperview().inset(15)
        }
        searchProduct.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(55)
           // make.bottom.equalToSuperview()
            make.leading.trailing.equalToSuperview().inset(118)
            make.height.equalTo(21)
            make.width.equalTo(140)
        }
        searchBar.snp.makeConstraints { make in
            make.top.equalTo(searchProduct.snp.bottom).offset(15)
            make.leading.trailing.equalToSuperview().inset(15)
            make.width.equalTo(243)
            make.height.equalTo(44)
        }
        
    }
}

extension SecondViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return isFiltr ? filtrList.count : foods.count

    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let ff3 = foods[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: cellID, for: indexPath) as! CustomTableViewCell
        cell.foodImg.image = UIImage(named: ff3.foodImg1)
        cell.labelBigNameFood.text =  isFiltr ? filtrList[indexPath.row].labelBigNameFood1 : foods[indexPath.row].labelBigNameFood1
        cell.labelTime.text = ff3.labelTime1
        cell.labelOtcenka.text = ff3.labelOtcenka1
        cell.labelCountry.text = ff3.labelCountry1
        cell.labelTypeFood.text = ff3.labelTypeFood1
        cell.labelKM.text = ff3.labelKM1
        cell.labelDelivery.text = ff3.labelDelivery1
        cell.labelPrice.text = ff3.labelPrice1
        return cell
    }
}



extension SecondViewController: UITableViewDelegate{
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
let vc =  FourViewController()
        vc.ff5 = foods[indexPath.row]
        navigationController?.pushViewController(vc, animated: true)
    }
}


extension SecondViewController: UISearchBarDelegate {
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        if searchText.isEmpty {
            isFiltr = false
        }else{
            isFiltr = true
            filtrList = foods.filter {
                $0.labelBigNameFood1.contains(searchText)
            }
        
        }
        tableView.reloadData()
        
    }
   
}

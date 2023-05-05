//
//  ViewController.swift
//  homework8.3
//
//  Created by Islam Erlan Uulu on 5/5/23.
//

import UIKit
import SnapKit

class FirstViewController: UIViewController {
    let label: UILabel = {
        let label = UILabel()
        label.text = "Welcome"
        label.textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        label.font = UIFont(name: "Helvetica Neue", size: 28)
        return label
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        view.addSubview(label)
        
        const()
        
    }
    
    private func const(){
        
        label.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(350)
            make.centerX.equalToSuperview()
            
        }
        
    }
    
}

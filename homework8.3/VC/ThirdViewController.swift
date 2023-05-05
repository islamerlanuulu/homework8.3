//
//  ThirdViewController.swift
//  homework8.3
//
//  Created by Islam Erlan Uulu on 5/5/23.
//

import UIKit

class ThirdViewController: UIViewController {
    private let label: UILabel = {
        let label = UILabel()
        label.text = "Cоздать продукт"
        label.font = .italicSystemFont(ofSize: 20)
        label.textColor = #colorLiteral(red: 0.1529411765, green: 0.1529411765, blue: 0.1607843137, alpha: 1)
        return label
    }()
    
    let tf1: UITextField = {
        let tf = UITextField()
        tf.placeholder = "Наименование продукта(Мандарин)"
        tf.backgroundColor = #colorLiteral(red: 0.6, green: 0.6078431373, blue: 0.6392156863, alpha: 0.07839733402)
        tf.layer.cornerRadius = 6
       return tf
    }()
    let tf3: UITextField = {
        let tf = UITextField()
        tf.placeholder = "Детальное описание продукта"
        tf.backgroundColor = #colorLiteral(red: 0.6, green: 0.6078431373, blue: 0.6392156863, alpha: 0.07839733402)
        tf.layer.cornerRadius = 6
       return tf
    }()
    
    let tf4: UITextField = {
        let tf = UITextField()
        tf.placeholder = "Категория продукта"
        tf.backgroundColor = #colorLiteral(red: 0.6, green: 0.6078431373, blue: 0.6392156863, alpha: 0.07839733402)
        tf.layer.cornerRadius = 6
       return tf
    }()
    let tf5: UITextField = {
        let tf = UITextField()
        tf.placeholder = "Бренд продукта"
        tf.backgroundColor = #colorLiteral(red: 0.6, green: 0.6078431373, blue: 0.6392156863, alpha: 0.07839733402)
        tf.layer.cornerRadius = 6
       return tf
    }()
    
    let tf2: UITextField = {
        let tf = UITextField()
        tf.placeholder = "Цена продукта (пример: 50)"
        tf.backgroundColor = #colorLiteral(red: 0.6, green: 0.6078431373, blue: 0.6392156863, alpha: 0.07839733402)
        tf.layer.cornerRadius = 6
       return tf
    }()
    
    private let button: UIButton = {
        let loginButton2 = UIButton()
        loginButton2.setTitle("Создать новый продукт", for: .normal)
        loginButton2.layer.backgroundColor = #colorLiteral(red: 0, green: 0.6588235294, blue: 0.4509803922, alpha: 1)
        loginButton2.layer.cornerRadius = 6
        return loginButton2
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        view.addSubview(label)
        view.addSubview(tf1)
        view.addSubview(tf2)
        view.addSubview(tf3)
        view.addSubview(tf4)
        view.addSubview(tf5)
        view.addSubview(button)
        
      
        
        label.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(70)
            make.leading.trailing.equalToSuperview().inset(118)
            make.height.equalTo(21)
            make.width.equalTo(140)
        }
        
        tf1.snp.makeConstraints { make in
            make.top.equalTo(label.snp.bottom).offset(58)
            make.leading.trailing.equalToSuperview().inset(20)
            make.height.equalTo(48)
        }
        tf2.snp.makeConstraints { make in
            make.top.equalTo(tf1.snp.bottom).offset(39)
            make.leading.trailing.equalToSuperview().inset(20)
            make.height.equalTo(48)
        }
        
        tf3.snp.makeConstraints { make in
            make.top.equalTo(tf2.snp.bottom).offset(39)
            make.leading.trailing.equalToSuperview().inset(20)
            make.height.equalTo(48)
        }
        tf4.snp.makeConstraints { make in
            make.top.equalTo(tf3.snp.bottom).offset(39)
            make.leading.trailing.equalToSuperview().inset(20)
            make.height.equalTo(48)
        }
        tf5.snp.makeConstraints { make in
            make.top.equalTo(tf4.snp.bottom).offset(39)
            make.leading.trailing.equalToSuperview().inset(20)
            make.height.equalTo(48)
        }
        
        button.snp.makeConstraints { make in
            make.top.equalTo(tf5.snp.bottom).offset(140)
            make.leading.trailing.equalToSuperview().inset(20)
            make.height.equalTo(49)
        }
        
        
        

    }
    
    
    
    
    
    

}

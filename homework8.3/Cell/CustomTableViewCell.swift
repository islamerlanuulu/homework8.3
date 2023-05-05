//
//  CustomTableViewCell.swift
//  homework8.3
//
//  Created by Islam Erlan Uulu on 5/5/23.
//

import UIKit


class CustomTableViewCell: UITableViewCell {
 
    private let bgView = UIView()
     let foodImg = UIImageView()
     let labelBigNameFood: UILabel = {
        let bigNameFood = UILabel()
        bigNameFood.text = ""
        bigNameFood.font = UIFont(name: "Abel", size: 24)
        bigNameFood.textColor = #colorLiteral(red: 0.2789022923, green: 0.2789022923, blue: 0.2789022923, alpha: 1)
        return bigNameFood
    }()

     let labelOpen: UILabel = {
        let labelOpen = UILabel()
        labelOpen.text = "• Open"
        labelOpen.font = UIFont(name: "Abel", size: 18)
        labelOpen.textColor = #colorLiteral(red: 0.5735054612, green: 0.7973162532, blue: 0.3432076573, alpha: 1)
        return labelOpen
    }()

     let labelTime: UILabel = {
        let labelTime = UILabel()
        labelTime.text = ""
        labelTime.font = UIFont(name: "Abel", size: 18)
        labelTime.textColor = #colorLiteral(red: 0.9960784314, green: 0.9882352941, blue: 0.9882352941, alpha: 1)
        labelTime.backgroundColor = #colorLiteral(red: 1, green: 0.808462739, blue: 0.3366853595, alpha: 1)
        return labelTime
    }()


     let imgStar: UIImageView = {
        let imgStar = UIImageView()
        imgStar.image = UIImage(systemName: "star.fill")
        imgStar.tintColor = #colorLiteral(red: 1, green: 0.808462739, blue: 0.3366853595, alpha: 1)
        return imgStar
    }()

         let labelOtcenka: UILabel = {
            let label46 = UILabel()
            label46.text = ""
            label46.font = .systemFont(ofSize: 15)
            label46.textColor = #colorLiteral(red: 0.2156862745, green: 0.2156862745, blue: 0.2156862745, alpha: 1)
            return label46
        }()

         let label601: UILabel = {
            let label601 = UILabel()
            label601.text = "(601)"
            label601.font = .systemFont(ofSize: 15)
            label601.textColor = #colorLiteral(red: 0.5137254902, green: 0.5137254902, blue: 0.5137254902, alpha: 1)
            return label601
        }()
         let labelCountry: UILabel = {
            let labelCountry = UILabel()
            labelCountry.text = ""
            labelCountry.font = .systemFont(ofSize: 15)
            labelCountry.textColor = #colorLiteral(red: 0.5137254902, green: 0.5137254902, blue: 0.5137254902, alpha: 1)
            return labelCountry


        }()
     let labelTypeFood: UILabel = {
        let labelType = UILabel()
        labelType.text = ""
        labelType.font = .systemFont(ofSize: 15)
        labelType.textColor = #colorLiteral(red: 0.5137254902, green: 0.5137254902, blue: 0.5137254902, alpha: 1)
        return labelType

    }()

     let labelDelivery: UILabel = {
        let labelType = UILabel()
        labelType.text = ""
        labelType.font = .systemFont(ofSize: 12)
        labelType.textColor = #colorLiteral(red: 0.5137254902, green: 0.5137254902, blue: 0.5137254902, alpha: 1)
        return labelType

    }()

     let labelPrice: UILabel = {
        let labelType = UILabel()
        labelType.text = ""
        labelType.font = .systemFont(ofSize: 12)
        labelType.textColor = #colorLiteral(red: 0.5137254902, green: 0.5137254902, blue: 0.5137254902, alpha: 1)
        return labelType

    }()
     let imgNavigator: UIImageView = {
        let imgNavigator = UIImageView()
        imgNavigator.image = UIImage(systemName: "paperplane.fill")
        imgNavigator.tintColor = #colorLiteral(red: 0.5137254902, green: 0.5137254902, blue: 0.5137254902, alpha: 1)
        return imgNavigator
    }()

     let labelKM: UILabel = {
        let labelKM = UILabel()
        labelKM.text = ""
        labelKM.font = UIFont(name: "Abel", size: 14)
        labelKM.textColor = #colorLiteral(red: 0.5137254902, green: 0.5137254902, blue: 0.5137254902, alpha: 1)
        return labelKM

    }()

    
    
    
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        addSubview(bgView)
        bgView.addSubview(foodImg)
        bgView.addSubview(labelBigNameFood)
        bgView.addSubview(labelOpen)
        bgView.addSubview(labelTime)
        bgView.addSubview(imgStar)
        bgView.addSubview(labelOtcenka)
        bgView.addSubview(label601)
        bgView.addSubview(labelCountry)
        bgView.addSubview(labelTypeFood)
        bgView.addSubview(labelDelivery)
        bgView.addSubview(labelPrice)
        bgView.addSubview(imgNavigator)
        bgView.addSubview(labelKM)
        
            
    
        
        
        
    
//Constraints
        bgView.snp.makeConstraints { make in
            make.top.bottom.leading.trailing.equalToSuperview()
            make.height.equalTo(300)
        }
        foodImg.snp.makeConstraints { make in
            make.top.leading.trailing.equalToSuperview()
            make.height.equalTo(194)
        }
        labelBigNameFood.snp.makeConstraints { make in
            make.top.equalTo(foodImg.snp.bottom).offset(13)
            make.leading.equalTo(14)
        }

        labelOpen.snp.makeConstraints { make in
            make.top.equalTo(foodImg.snp.bottom).offset(13)
            make.leading.equalTo(labelBigNameFood.snp.trailing).offset(8)
        }
        labelTime.snp.makeConstraints { make in
            make.top.equalTo(foodImg.snp.bottom).offset(14)
            make.trailing.equalToSuperview().offset(-13)
        }
        imgStar.snp.makeConstraints { make in
            make.top.equalTo(labelBigNameFood.snp.bottom).offset(3)
            make.leading.equalToSuperview().offset(12)
        }
        labelOtcenka.snp.makeConstraints { make in
            make.top.equalTo(labelBigNameFood.snp.bottom).offset(4)
            make.leading.equalTo(imgStar.snp.trailing).offset(6.5)
        }
        
        label601.snp.makeConstraints { make in
            make.top.equalTo(labelBigNameFood.snp.bottom).offset(4)
            make.leading.equalTo(labelOtcenka.snp.trailing).offset(6)
        }
        labelCountry.snp.makeConstraints { make in
            make.top.equalTo(labelBigNameFood.snp.bottom).offset(4)
            make.leading.equalTo(label601.snp.trailing).offset(9)
        }
        
        labelTypeFood.snp.makeConstraints { make in
            make.top.equalTo(labelOpen.snp.bottom).offset(4)
            make.leading.equalTo(labelCountry.snp.trailing).offset(7)
        }
        imgNavigator.snp.makeConstraints { make in
            make.top.equalTo(labelTime.snp.bottom).offset(18)
            make.trailing.equalTo(labelKM.snp.leading).offset(-7)
        }
        
        
        labelKM.snp.makeConstraints { make in
            make.top.equalTo(labelTime.snp.bottom).offset(17.5)
            make.trailing.equalToSuperview().offset(-14)
        }
        
        labelDelivery.snp.makeConstraints { make in
            make.top.equalTo(labelOtcenka.snp.bottom).offset(4)
            make.leading.equalTo(14)
        }
        labelPrice.snp.makeConstraints { make in
            make.top.equalTo(labelCountry.snp.bottom).offset(4)
            make.leading.equalTo(labelDelivery.snp.trailing).offset(8)
        }
        
        
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

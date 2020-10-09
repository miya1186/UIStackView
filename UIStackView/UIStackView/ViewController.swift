//
//  ViewController.swift
//  UIStackView
//
//  Created by miyazawaryohei on 2020/10/09.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        //スタックビューに入れるビューを準備する
        let view1 = UIView()
        view1.backgroundColor = .lightGray
        let view2 = UIView()
        view2.backgroundColor = .gray
        //写真のイメージビュー
        let photo1 = UIImageView(image: UIImage(named: "buildings"))
        let photo2 = UIImageView(image: UIImage(named: "image"))
        photo1.contentMode = .scaleAspectFill
        photo1.clipsToBounds = true
        photo2.contentMode = .scaleAspectFill
        photo2.clipsToBounds = true
        
        //スタックビューを作る
        let rect = CGRect(x: 0, y: 0, width: 300, height: 600)
        let stackView = UIStackView(frame: rect)
        //縦積みにする
        stackView.axis = .vertical
        stackView.distribution = .fillEqually
        stackView.spacing = 10
        
        //スタックビューに用意しておいたビューを追加する
        stackView.addArrangedSubview(view1)
        stackView.addArrangedSubview(view2)
        stackView.addArrangedSubview(photo1)
        stackView.addArrangedSubview(photo2)
        
        //スタックビューを画面中央に表示する
        stackView.center = self.view.center
        self.view.addSubview(stackView)
    }


}


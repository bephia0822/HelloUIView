//
//  ViewController.swift
//  HelloUIView
//
//  Created by Sophia Wang on 2021/3/12.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var MidRect: UIView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        //set background color
        MidRect.backgroundColor = UIColor.green
        //set transparency 0~1 設定透明度，1是完全不透明
        MidRect.alpha = 0.5
        //hide uiview, make it invisible
        MidRect.isHidden = true
        //設定加多少紅、綠、藍、透明度
        view.backgroundColor = UIColor(red: 1, green: 0.9, blue: 0.8, alpha: 1)
        //Optional Chaning:101就是我們剛剛設定的紅色正方形，有值就會幫我們設定成light gray,沒有值就會當作沒這回事
        view.viewWithTag(101)?.backgroundColor = UIColor.lightGray
        
        //如何用程式碼寫一個新的view放到畫面上
        let viewArea =  CGRect(x: 50, y: 400, width: 100, height: 50)
        let smallRect = UIView(frame: viewArea)
        smallRect.backgroundColor = UIColor.purple
        view.viewWithTag(101)?.addSubview(smallRect)  //一定要加入整個畫面的view當作subview(加入子視圖)，把紫色的view加入灰色的view
    }


}


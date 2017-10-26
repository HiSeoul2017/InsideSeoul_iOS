//
//  MainViewController.swift
//  hiseoul
//
//  Created by 박태준 on 2017. 10. 26..
//  Copyright © 2017년 SeoulAppContest. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {

    var scrollView: UIScrollView!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        setUI()
    }

    //UI 생성
    func setUI(){
        setUISetting()
        setScrollView()
    }
    
    //기본 UI 세팅
    func setUISetting(){
        
        //내비게이션 바 지우기
        self.navigationController?.setNavigationBarHidden(true, animated: true)
        
        //백그라운드 컬러
        view.backgroundColor = .green
    }
    
    //스크롤뷰 세팅
    func setScrollView(){
        let screensize : CGRect = UIScreen.main.bounds
        let screenWidth = screensize.width
        let screenHeight = screensize.height
        
        scrollView = UIScrollView(frame: CGRect(x: 0, y: 0, width: screenWidth, height: screenHeight))
        scrollView.contentSize = CGSize(width: screenWidth, height: screenHeight * 1.2 + 20)
        view.addSubview(scrollView)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

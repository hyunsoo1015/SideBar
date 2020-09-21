//
//  FrontViewController.swift
//  SideBar
//
//  Created by 김현수 on 2020/09/18.
//  Copyright © 2020 Hyun Soo Kim. All rights reserved.
//

import UIKit

class FrontViewController: UIViewController {

    @IBOutlet weak var sideBarButton: UIBarButtonItem!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        //사이드 바 버튼을 누르면 테이블 뷰 컨트롤러가 토글 된다.
        if let revealVC = self.revealViewController() {
        self.sideBarButton.target = revealVC
        self.sideBarButton.action = #selector(revealVC.revealToggle(_:))
        
        //스와이프 할 때도 동작하도록 설정
        self.view.addGestureRecognizer(revealVC.panGestureRecognizer())
        }
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

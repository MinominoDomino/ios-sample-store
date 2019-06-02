//
//  CustomSege.swift
//  UnwindAndCustomSegue
//
//  Created by Domino on 02/06/2019.
//  Copyright © 2019 MinominoDomino. All rights reserved.
//

import UIKit

class CustomSege: UIStoryboardSegue {
    
    //초기화를 위한 오버라이드, 정상적인 세그웨이 호출을 위하여 상위 init를 호출해야합니다.
    override init(identifier: String?, source: UIViewController, destination: UIViewController) {
        super.init(identifier: identifier, source: source, destination: destination)
    }
    
    //실제 커스텀 세그웨이의 트랜지션을 구현합니다. 화면 전환의 애니메이션 등 트랜지션에 모든것을 직접 구현해야합니다.
    override func perform() {
        var frame = source.view.bounds
        frame.origin.y = frame.height
        frame.size.height = frame.height / 2
        
        source.view.addSubview(destination.view)
        destination.view.frame = frame
        destination.view.alpha = 0.0
        
        source.addChild(destination)
        
        frame.origin.y = source.view.bounds.height / 2
        
        UIView.animate(withDuration: 0.3) {
            self.destination.view.frame = frame
            self.destination.view.alpha = 1.0
        }
    }

}

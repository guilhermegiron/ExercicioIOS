//
//  AnotherControllerView.swift
//  LayoutUI
//
//  Created by user239587 on 4/24/23.
//

import Foundation
import UIKit

class AnotherControllerView: UIViewController {
    
    lazy var btn : UIButton = {
        let botao = UIButton()
        botao.setTitle("Voltar", for: .normal)
        botao.setTitleColor(.red, for: .normal)
        botao.backgroundColor = .lightGray
        botao.translatesAutoresizingMaskIntoConstraints = false
        
        return botao
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
        view.backgroundColor = .gray
        
    }
    
    func setup(){
        
        view.addSubview(btn)
        btn.widthAnchor.constraint(equalToConstant: 120).isActive = true
        btn.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
        btn.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 10).isActive = true
        btn.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 10).isActive = true
        
    
    }
}

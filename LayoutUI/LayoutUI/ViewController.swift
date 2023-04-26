//
//  ViewController.swift
//  LayoutUI
//
//  Created by guilhermegiron on 4/11/23.
//

import UIKit

//Gerar alguma Cor Com Metodo RGB
extension UIColor {
    convenience init(red: Int, green: Int, blue: Int) {
        let newRed = CGFloat(red)/255
        let newGreen = CGFloat(green)/255
        let newBlue = CGFloat(blue)/255
        
        self.init(red: newRed, green: newGreen, blue: newBlue, alpha: 1.0)
    }
}

class ViewController: UIViewController {
    
    lazy var stackview : UIStackView = {
        let stack = UIStackView(arrangedSubviews: [viewRoxaEscura, viewRoxoclaro, viewRoxaMaisClara])
        stack.axis = .horizontal
        stack.alignment = .fill
        stack.distribution = .fillEqually
        stack.spacing = 20
        stack.translatesAutoresizingMaskIntoConstraints = false
        return stack
    }()
    
    lazy var botao2: UIButton = {
        let botao2 = UIButton()
        
        //Cor do botao (fundo)
        botao2.titleLabel?.textColor = .red
        
        let cor = UIColor(red: 25, green: 66, blue: 43)
        botao2.backgroundColor = cor
        
        //Setar a string do Titulo do botao
        botao2.setTitle(" Mudar View ", for: .normal)
        
        botao2.translatesAutoresizingMaskIntoConstraints = false
        
        //Funcao para quando botao for pressionado
        botao2.addTarget(self, action: #selector(acaobotao2), for: .touchUpInside)
        
        return botao2
    }()
    
    
    lazy var botao: UIButton = {
        let botao = UIButton()
        
        //Cor do botao (fundo)
        botao.titleLabel?.textColor = .red
        
        let amarelo = UIColor(red: 162, green: 122, blue: 1)
        botao.backgroundColor = amarelo
        
        //Setar cor no titulo do botao
        let roxoescuro = UIColor(red: 16, green: 25, blue: 66)
        botao.setTitleColor(roxoescuro, for: .normal)
        
        //Setar a string do Titulo do botao
        botao.setTitle(" Troca Cor ", for: .normal)
        botao.setTitleShadowColor(amarelo, for: .normal)
        
        botao.translatesAutoresizingMaskIntoConstraints = false
        
        //Funcao para quando botao for pressionado
        botao.addTarget(self, action: #selector(acaobotao), for: .touchUpInside)
        
        return botao
    }()
    
    @objc func acaobotao() {
        print("Button tapped")
        random()
    }
    
    @objc func acaobotao2() {
        print("acao botao trocar view")
        let view2 = AnotherControllerView()
        self.present(view2, animated: true)
        
        
    }
    
    func random() {
        
        for i in 1...3 {
            
            var r = arc4random_uniform(255) + 1
            var g = arc4random_uniform(255) + 1
            var b = arc4random_uniform(255) + 1
            
            
            let novacor = UIColor(red: Int(r), green: Int(g), blue: Int(b))
            if i == 1 { viewRoxoclaro.backgroundColor = novacor}
            if i == 2 { viewRoxaEscura.backgroundColor = novacor}
            if i == 3 { viewRoxaMaisClara.backgroundColor = novacor}
            

        }
        var r = arc4random_uniform(255) + 1
        var g = arc4random_uniform(255) + 1
        var b = arc4random_uniform(255) + 1
        
        view.backgroundColor = UIColor(red: Int(g), green: Int(b), blue: Int(r))
        
        
    }
    
    lazy var viewRoxaEscura: UIView = {
        let viewRoxaEscura = UIView()
        let roxoescuro = UIColor(red: 16, green: 25, blue: 66)
        viewRoxaEscura.backgroundColor = roxoescuro
        viewRoxaEscura.translatesAutoresizingMaskIntoConstraints = false
        return viewRoxaEscura
    }()
    
    lazy var viewRoxoclaro: UIView = {
        let viewRoxoclaro = UIView()
        let roxoclaro = UIColor(red: 143, green: 108, blue: 198)
        viewRoxoclaro.backgroundColor = roxoclaro
        viewRoxoclaro.translatesAutoresizingMaskIntoConstraints = false
        return viewRoxoclaro
    }()
    
    lazy var viewRoxaMaisClara: UIView = {
        let roxamaisclara = UIColor(red: 199, green: 182, blue: 226)
        let viewroxamaisclara = UIView()
        viewroxamaisclara.backgroundColor = roxamaisclara
        viewroxamaisclara.translatesAutoresizingMaskIntoConstraints = false
        return viewroxamaisclara
    }()

    
    func setup() {
        
        view.addSubview(botao2)
        botao2.widthAnchor.constraint(equalToConstant: 120).isActive = true
        botao2.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
        botao2.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 10).isActive = true
        botao2.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -270).isActive = true
       
        view.addSubview(stackview)
        stackview.widthAnchor.constraint(equalToConstant: 300).isActive = true
        stackview.heightAnchor.constraint(equalToConstant: 300).isActive = true
        
        stackview.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 0).isActive = true
        stackview.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 0).isActive = true
                
        view.addSubview(botao)
        botao.widthAnchor.constraint(equalToConstant: 150).isActive = true
        botao.heightAnchor.constraint(equalToConstant: 60).isActive = true
        
        botao.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 10).isActive = true
        botao.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 300).isActive = true
        
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        setup()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        
    }
    
    
    

}

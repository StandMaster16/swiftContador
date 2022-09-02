//
//  ViewController.swift
//  Contador
//
//  Created by ICMMAC10-78E2 on 02/09/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var view1: UIView!
    @IBOutlet weak var labelNumero: UILabel!
    @IBOutlet weak var numeros: UITextField!
    @IBOutlet weak var labelMultiplo: UILabel!
    
    var numero = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view1.isHidden = true

    }
    @IBAction func botaoPlay(_ sender: Any) {
        
        numero = Int(numeros.text!) ?? 0
        view1.isHidden = false
        view.endEditing(true)
        labelNumero.text = "\(numero)"
        if (numero%10 == 0) {
            labelMultiplo.text = "É um múltiplo de 10"
        }else{
            labelMultiplo.text = "Não é um múltiplo de 10 :("
        
        }
    }
    
    @IBAction func botaoSair(_ sender: Any) {
        view1.isHidden = true
        
    }
    
    @IBAction func esquerda(_ sender: Any) {
        numero = numero-1
        labelNumero.text = "\(numero)"
        labelMultiplo.text = "Contando hehe"
        
    }
    
    @IBAction func direita(_ sender: Any) {
        numero = numero+1
        labelNumero.text = "\(numero)"
        labelMultiplo.text = "Contando hehe"
    }
    
}


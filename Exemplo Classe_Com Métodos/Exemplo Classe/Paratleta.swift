//
//  Paratleta.swift
//  Exemplo Classe
//
//  Created by Usuário Convidado on 11/03/24.
//

import Cocoa

class Paratleta: Atleta {
    
    var deficiencia:String
    
    override init(){
        deficiencia = ""
        super.init()
    }
    
    override func exibirAtleta() -> String {
        return super.exibirAtleta() + " - deficiência relatada: \(deficiencia)"
    }
}

//
//  Atleta.swift
//  Exemplo Classe
//
//  Created by Usuário Convidado on 04/03/24.
//

import Cocoa

class Atleta: NSObject, AlimentoSolido, AlimentoLiquido {
    
    var nome:String
    var idade:Int
    
    override init(){
        self.idade = 0
        self.nome = ""
    }
    
    init(nome:String, idade:Int){
        self.nome = nome
        self.idade = idade
    }
    
    deinit {
        print("\(nome) está sendo desinicializado!")
    }
    //sub-rotina, ou seja, não tem return
    func calcularIMC(peso:Float, altura:Float) throws{
        if altura > 2{
            let msg = "Não pode ter mais de 2 metros de altura"
            throw NSError(domain: msg, code: 0)
        }
        let imc = peso / (altura*altura)
        let formatado = String(format: "%0.2f", imc)
        print("O IMC de \(self.nome) é \(formatado)")
    }
    //function, tem return
    func calcularIMC2(peso:Float, altura:Float)->Float{
        return peso / pow(altura, 2)
    }
    //Abaixo um método de instância como os exemplos acima
    func exibirAtleta()->String{
        return "Atleta é : " + self.nome
    }
    //abaixo um método de classe não precisa de instância para chamar
    //similar aos métodos estátivos do Java
    class func alerta()->String{
        return "A competição irá iniciar em breve"
    }
    //Sobrecarga - Overloads
    class func alerta(tempoEmMinutos:Int)->String{
        return "A campetição irá iniciar em \(tempoEmMinutos) minutos"
    }
    
        
    func comerCarboidrato(){
        print("Atleta \(self.nome) deve comer batata doce")
    }
    
    func beberIsotonico(){
        print("Atleta \(self.nome) deve beber Gatorade")
    }
    
    

}

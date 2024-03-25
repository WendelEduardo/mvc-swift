//
//  main.swift
//  Exemplo Classe
//
//  Created by Usuário Convidado on 04/03/24.
//

import Foundation

//print("Hello, World!")
//Exemplo de criação de uma instância do Atleta
var a = Atleta()
a.nome =  "Ana"
a.idade = 22
print("Atleta \(a.nome) tem \(a.idade) anos")

var a2 = Atleta(nome: "Carlos", idade: 25)
print("Atleta \(a2.nome) tem \(a2.idade) anos")

var a3: Atleta?
a3 = Atleta(nome: "Caio", idade: 45)
print("Atleta \(a3!.nome) tem \(a3!.idade) anos")
a3 = nil

var referencia1: Pessoa?
var referencia2: Pessoa?
var referencia3: Pessoa?

referencia1 = Pessoa(nome: "Marina", cidade: "Florianópolis")

referencia2 = referencia1
referencia3 = referencia1

referencia1 = nil
referencia2 = nil

//só quando mandamos nulo para a terceira e última referência o objeto é desalocado.
referencia3 = nil

//chamando os métodos
//sub-rotina
do{
    try a.calcularIMC(peso: 60, altura: 3)
}
catch let error as NSError{
    print("Erro: \(error)")
}


//function
print(a2.calcularIMC2(peso: 97, altura: 1.87))
//chamando um método de instância
print(a2.exibirAtleta())
//chamando um método de classe
print(Atleta.alerta())

var p = Paratleta()
p.nome = "Jonas"
p.idade = 20
p.deficiencia = "Braço direito amputado"
print(p.exibirAtleta())


//fazendo uso de overloads - sobrecarga
print(Atleta.alerta())
print(Atleta.alerta(tempoEmMinutos: 20))



a.beberIsotonico()
a.comerCarboidrato()

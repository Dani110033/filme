//
//  Filme.swift
//  Filmes
//
//  Created by Enzo on 12/07/23.
//


import UIKit

class Filme {
    var titulo: String!
    var descricao: String!
    var imagem: UIImage!
    var sugestao: String!
    
    init (titulo: String , descricao: String, imagem: UIImage, sugestao: String) {
        self.titulo = titulo
        self.descricao = descricao
        self.imagem = imagem
        self.sugestao = sugestao
    }
}

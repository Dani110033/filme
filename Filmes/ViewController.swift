//
//  ViewController.swift
//  Filmes
//
//  Created by Enzo on 12/07/23.
//

import UIKit

 class ViewController: UITableViewController {

    var filmes: [Filme] = []

     
    override func viewDidLoad() {
        super.viewDidLoad()
       
        var filme: Filme
        
        filme = Filme(titulo: "007 - spectre", descricao: "descricao 1", imagem: UIImage(named: "filme1") ?? UIImage(named: "filme1")!, sugestao: "Terrorismo, Vingança e Extorsão, a Spectre aparecerá pela primeira vez na era de Daniel Craig no papel de Bond.")
        filmes.append(filme)

        filme = Filme(titulo: "Star Wars", descricao: "descricao 2", imagem: UIImage(named: "filme2") ?? UIImage(named: "filme1")!, sugestao: "Star Wars, foi o quarto filme lançado pela Lucas Film, mas é o primeiro na ordem cronológica da saga.")
        filmes.append(filme)
        
        filme = Filme(titulo: "Impacto Mortal", descricao: "descricao 3", imagem: UIImage(named: "filme3") ?? UIImage(named: "filme1")!, sugestao: "A trama segue a jornada de John e Colt, pistoleiros e, por vezes, amantes, em trajetos paralelos mas muito diferentes através de uma cultura de duelo subterrâneo.")
        filmes.append(filme)
        
        filme = Filme(titulo: "Deadpool", descricao: "descricao 4", imagem: UIImage(named: "filme4") ?? UIImage(named: "filme1")!, sugestao: "Wade Wilson (Ryan Reynolds) é diagnosticado com câncer em estado terminal, porém encontra uma possibilidade de cura em uma sinistra experiência científica.")
        filmes.append(filme)
        
        filme = Filme(titulo: "O Regresso", descricao: "descricao 5", imagem: UIImage(named: "filme5") ?? UIImage(named: "filme5")!, sugestao: "Após ser atacado por um urso, o caçador Hugh Glass é abandonado na floresta por seu companheiro John Fitzgerald. Apesar de muito ferido, Glass consegue sobreviver e vai em busca de vingança.")
        filmes.append(filme)
        
        filme = Filme(titulo: "A Herdeira", descricao: "descricao 6", imagem: UIImage(named: "filme6") ?? UIImage(named: "filme1")!, sugestao: "A herdeira é o quarto livro da série de livros A Seleção. A história é baseada na filha de Maxon e America, Eadlyn, que se vê obrigada a participar de uma nova seleção, para ajudar os seus pais e distrair o país, já que o país está passando por um momento difícil.")
        filmes.append(filme)
        
        filme = Filme(titulo: "O Caçadores de Emoção", descricao: "descricao 7", imagem: UIImage(named: "filme7") ?? UIImage(named: "filme1")!, sugestao: "Keanu Reeves é Johnny Utah, um correto agente novato do FBI, que recebe a missão de encontrar uma guangue de ladrões que está atuando no sul da Califórnia.")
        filmes.append(filme)
        
        filme = Filme(titulo: "Regresso do Mal", descricao: "descricao 8", imagem: UIImage(named: "filme8") ?? UIImage(named: "filme1")!, sugestao: "Durante um desfile na noite de Halloween, um menino de oito anos desaparece misteriosamente. Depois de um ano sem qualquer pista, os pais do garoto começam a sentir presenças estranhas.")
        filmes.append(filme)
        
        filme = Filme(titulo: "Tarzan", descricao: "descricao 9", imagem: UIImage(named: "filme9") ?? UIImage(named: "filme1")!, sugestao: "Tarzan é filho de aristocratas ingleses que foram abandonados na costa africana, ainda em sua infância, os pais de Tarzan faleceram, a mãe, morrera por causas naturais, já o pai, foi assassinado pelo chefe do grupo dos macacos em que Tarzan posteriormente viveria.")
        filmes.append(filme)
        
        filme = Filme(titulo: "Hardcore" , descricao: "descricao 10", imagem: UIImage(named: "filme10") ?? UIImage(named: "filme1")!, sugestao: "Henry, um ciborgue recém-ressucitado deve salvar sua esposa/criadora das garras de um tirano psicótico com poderes telecináticos, Akan, e seu exército de mercenários. Lutando ao lado dele, Jimmy é a única esperança de Henry para realizar tal feito até o final do dia.")
        filmes.append(filme)
        
        
    }
     
     override func numberOfSections(in tableView: UITableView) -> Int {
         return 1
         
     }
     
     override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
         return filmes.count
         
     }
     
    override func tableView (_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let filme: Filme = filmes[  indexPath.row ]
        let celulaReuso =  "celulaReuso"
        
        let celula = tableView.dequeueReusableCell(withIdentifier: celulaReuso, for: indexPath ) as! FilmeCelula
        celula.filmeImageView.image = filme.imagem
        celula.tituloLabel.text = filme.titulo
        celula.descricaoLabel.text = filme.descricao

        
     
        celula.filmeImageView.layer.cornerRadius = 42
        celula.filmeImageView.clipsToBounds = true
        
        
        /*celula.textLabel?.text = filme.titulo
        celula.imageView?.image = filme.imagem*/
 
     return celula
     
 }

         override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            
            if segue.identifier == "detalheFilme" {
                if let indexPath = tableView.indexPathForSelectedRow {
                let filmeSelecionado = self.filmes[ indexPath.row ]
                let viewControllerDestino = segue.destination as! DetalhesFilmeViewController
                viewControllerDestino.filme = filmeSelecionado
                
                }
    }
            
        }
    

 }

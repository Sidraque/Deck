//
//  ViewController.swift
//  Baralho
//
//  Created by Sidraque on 16/08/21.
//

import UIKit



class ViewController: UIViewController{
    
    @IBOutlet weak var ivDeck: UIImageView!
    @IBOutlet weak var ivDeck2: UIImageView!
    @IBOutlet weak var ivDeck3: UIImageView!
    @IBOutlet weak var ivDeck4: UIImageView!
    @IBOutlet weak var ivDeck5: UIImageView!
    @IBOutlet weak var ivDeck6: UIImageView!
    @IBOutlet weak var ivDeck7: UIImageView!
    @IBOutlet weak var ivDeck8: UIImageView!
    @IBOutlet weak var ivDeck9: UIImageView!
    
    @IBOutlet weak var deck1: UIImageView!
    @IBOutlet weak var deck2: UIImageView!
    @IBOutlet weak var deck3: UIImageView!
    @IBOutlet weak var deck4: UIImageView!
    @IBOutlet weak var deck5: UIImageView!
    @IBOutlet weak var deck6: UIImageView!
    @IBOutlet weak var deck7: UIImageView!
    @IBOutlet weak var deck8: UIImageView!
    @IBOutlet weak var deck9: UIImageView!
    
    
    
    @IBOutlet weak var btShuffle: UIButton!
    @IBOutlet weak var btShuffleAgain: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        arrOfCards = [ivDeck, ivDeck2, ivDeck3, ivDeck4, ivDeck5, ivDeck6, ivDeck7, ivDeck8, ivDeck9]
        
        arrOfCardsTwo = [deck1, deck2, deck3, deck4, deck5, deck6, deck7, deck8, deck9]
        
        btShuffleAgain.isHidden = true
        
        for count in 0...8{
        
            arrOfCards[count].isHidden = true
            
        }
        
    }
    
    
    
    var arrOfCards : [UIImageView] = []
    var arrOfCardsTwo : [UIImageView] = []
    
    var cardCount = 0
    var total = 0
    

    // MOSTRA CARTAS EMBARALHADAS EM ORDEM
    
    @IBAction func btShuffleCards(_ sender: UIButton) {
        
    
            if (btShuffle.title(for: .normal) == "Começar Jogo"){
                
                for count in 0...8{
                
                    arrOfCards[count].isHidden = false
                    
                }
                
                btShuffleAgain.isHidden = false
                btShuffle.setTitle("Mostrar carta", for: .normal)
                
            }else if (btShuffle.title(for: .normal) == "Mostrar carta") || (btShuffle.title(for: .normal) == "Mostrar próxima carta")  {
                
                btShuffle.setTitle("Mostrar próxima carta", for: .normal)
                
                
                
                if total < 9 {
                    
                    var randomCard = Int()
                    
                                                        //valor à ser excluído
                    randomCard = Int.random(in: 1...52, excluding: randomCard)
                    
                    arrOfCards[cardCount].image = UIImage(named: "card\(randomCard)")
                    arrOfCardsTwo[cardCount].image = UIImage(named: "card\(randomCard)")
                    
                    //teste
                    print(randomCard)
                    
                    arrOfCards[cardCount].isHidden = true
                    
                    
                    
                    cardCount += 1
                    total += 1
                    
                    
                }
                
    }
}
    
    //GERA CARTAS EMBARALHADAS
    
    @IBAction func shuffleAgain(_ sender: UIButton) {
        
        cardCount = 0
        total = 0
            
        for count in 0...8{
            
        arrOfCards[count].isHidden = false
        
        arrOfCards[count].image = UIImage(named: "BackCard")
        arrOfCardsTwo[count].image = nil
                
        }
            
        btShuffle.setTitle("Mostrar carta", for: .normal)
            
            
    }
    

}


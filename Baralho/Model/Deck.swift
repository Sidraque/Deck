//
//  Deck.swift
//  Baralho
//
//  Created by Sidraque on 30/08/21.
//

import Foundation

struct Cards {
    
        let names: Names
        let naipes: Naipes
        
       
        enum Names: Int {
            
            case two = 2, three, four, five, six, seven, eight, nine, ten
            case valete, queen, king, az


            func descriptionCards() -> String {
                
                switch self {
                case .valete: return "Valete"
                case .queen: return "Rainha"
                case .king: return "Rei"
                case .az: return "Az"
                default: return String(self.rawValue)
                    
                }
            }
            
            
            func valueCards() -> Int {
                
                switch self {
                        
                    case .az: return 14
                    case .king: return 13
                    case .queen: return 12
                    case .valete: return 11
                    case .ten: return 10
                    case .nine: return 9
                    case .eight: return 8
                    case .seven: return 7
                    case .six: return 6
                    case .five: return 5
                    case .four: return 4
                    case .three: return 3
                    case .two: return 2
                            
                    
                }
                
                
            }
            
        }

        enum Naipes: String {
            
            case espada = "♠️"
            case paus = "♣️"
            case copas = "♥️"
            case ouro = "♦️"
            
        }
    
    
    
    }

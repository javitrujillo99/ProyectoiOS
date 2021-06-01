//
//  Team.swift
//  Ejercicio6
//
//  Created by Javi Trujillo on 19/4/21.
//

import Foundation

//Creamos el objeto Team para introducir los equipos en el array de equipos. Creado como objeto es mucho más correcto y más fácil de entender que hacerlo de otra manera.

class Team {
    var name: String
    var shortName: String
    
    //Creamos un inicializador
    init(name: String, shortName: String) {
        self.name = name
        self.shortName = shortName
    }
}

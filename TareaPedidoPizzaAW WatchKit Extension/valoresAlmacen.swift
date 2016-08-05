//
//  valoresAlmacen.swift
//  TareaPedidoPizzaAW
//
//  Created by XrgerX on 4/08/16.
//  Copyright © 2016 XrgerX. All rights reserved.
//

import WatchKit

class valoresAlmacen: NSObject {
   
    var valorTamano: String = ""
    var valorTipoMasa: String = ""
    var valorTipoQueso: String = ""
    var valorIngredientes: [String] = []
    
    init(vt: String, vtm: String, vtq: String, vi: [String]) {
        valorTamano = vt
        valorTipoMasa = vtm
        valorTipoQueso = vtq
        valorIngredientes = vi
    }
}

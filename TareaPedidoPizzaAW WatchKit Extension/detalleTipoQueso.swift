//
//  detalleTipoQueso.swift
//  TareaPedidoPizzaAW
//
//  Created by XrgerX on 4/08/16.
//  Copyright © 2016 XrgerX. All rights reserved.
//

import WatchKit
import Foundation


class detalleTipoQueso: WKInterfaceController {

    var etiquetaTamano: String = ""
    var etiquetaTipoMasa: String = ""
    var etiquetaTipoQueso: String = ""
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        let c = context as! valoresAlmacen
        etiquetaTamano = String (c.valorTamano)
        etiquetaTipoMasa = String(c.valorTipoMasa)
        // Configure interface objects here.
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

    @IBAction func obtieneQuesoMozarela() {
      etiquetaTipoQueso = "Queso Mozarela"
      let valorContexto = valoresAlmacen(vt:etiquetaTamano, vtm: etiquetaTipoMasa, vtq: etiquetaTipoQueso, vi: [""])
      pushControllerWithName("IdentificadorIngredientes", context: valorContexto)
    }
    
    @IBAction func obtieneQuesoCheddar() {
      etiquetaTipoQueso = "Queso Cheddar"
      let valorContexto = valoresAlmacen(vt:etiquetaTamano, vtm: etiquetaTipoMasa, vtq: etiquetaTipoQueso, vi: [""])
      pushControllerWithName("IdentificadorIngredientes", context: valorContexto)    }
    
    @IBAction func obtieneQuesoParmesano() {
      etiquetaTipoQueso = "Queso Parmesano"
      let valorContexto = valoresAlmacen(vt:etiquetaTamano, vtm: etiquetaTipoMasa, vtq: etiquetaTipoQueso, vi: [""])
      pushControllerWithName("IdentificadorIngredientes", context: valorContexto)
    }
    
    @IBAction func obtieneSinQueso() {
      etiquetaTipoQueso = "Sin Queso"
      let valorContexto = valoresAlmacen(vt:etiquetaTamano, vtm: etiquetaTipoMasa, vtq: etiquetaTipoQueso, vi: [""])
      pushControllerWithName("IdentificadorIngredientes", context: valorContexto)
    }
    
}

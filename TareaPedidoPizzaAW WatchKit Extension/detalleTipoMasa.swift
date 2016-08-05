//
//  detalleTipoMasa.swift
//  TareaPedidoPizzaAW
//
//  Created by XrgerX on 4/08/16.
//  Copyright © 2016 XrgerX. All rights reserved.
//

import WatchKit
import Foundation


class detalleTipoMasa: WKInterfaceController {

    var etiquetaTamano: String = ""
    var etiquetaTipoMasa: String = ""
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        let c = context as! valoresAlmacen
        etiquetaTamano = (String(c.valorTamano))        // Configure interface objects here.
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

    @IBAction func obtieneMasaDelgada() {
        etiquetaTipoMasa = "Masa Delgada"
       let valorContexto = valoresAlmacen(vt:etiquetaTamano, vtm: etiquetaTipoMasa, vtq: "", vi: [""])
        pushControllerWithName("IdentificadorQueso", context: valorContexto)
    }
    
    @IBAction func obtieneMasaCrujiente() {
        etiquetaTipoMasa = "Masa Crujiente"
        let valorContexto = valoresAlmacen(vt:etiquetaTamano, vtm: etiquetaTipoMasa, vtq: "", vi: [""])
        pushControllerWithName("IdentificadorQueso", context: valorContexto)    }
    
    @IBAction func obtieneMasaGrande() {
        etiquetaTipoMasa = "Masa Gruesa"
        let valorContexto = valoresAlmacen(vt:etiquetaTamano, vtm: etiquetaTipoMasa, vtq: "", vi: [""])
        pushControllerWithName("IdentificadorQueso", context: valorContexto)    }
    
}

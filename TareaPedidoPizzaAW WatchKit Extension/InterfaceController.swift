//
//  InterfaceController.swift
//  TareaPedidoPizzaAW WatchKit Extension
//
//  Created by XrgerX on 4/08/16.
//  Copyright © 2016 XrgerX. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {
    
    var tamanoPizza: String = ""
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
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

    @IBAction func obtienePizzaChica() {
      tamanoPizza = "Pizza Chica"
      let valorContexto = valoresAlmacen(vt:tamanoPizza, vtm: "", vtq: "", vi: [""])
      pushControllerWithName("IdentificadorMasa", context: valorContexto)
    }
    
    @IBAction func obtienePizzaMediana() {
      tamanoPizza = "Pizza Mediana"
      let valorContexto = valoresAlmacen(vt:tamanoPizza, vtm: "", vtq: "", vi: [""])
      pushControllerWithName("IdentificadorMasa", context: valorContexto)
    }
    
    @IBAction func obtienePizzaGrande() {
      tamanoPizza = "Pizza Grande"
      let valorContexto = valoresAlmacen(vt:tamanoPizza, vtm: "", vtq: "", vi: [""])
      pushControllerWithName("IdentificadorMasa", context: valorContexto)
    }
}


//
//  detallePedido.swift
//  TareaPedidoPizzaAW
//
//  Created by XrgerX on 5/08/16.
//  Copyright © 2016 XrgerX. All rights reserved.
//

import WatchKit
import Foundation


class detallePedido: WKInterfaceController {

    @IBOutlet var etiquetaTamano: WKInterfaceLabel!
    @IBOutlet var etiquetaTipoMasa: WKInterfaceLabel!
    @IBOutlet var etiquetaTipoQueso: WKInterfaceLabel!
    @IBOutlet var etiquetaIngrediente1: WKInterfaceLabel!
    @IBOutlet var etiquetaIngrediente2: WKInterfaceLabel!
    var UnionIngredientes: [String] = []
    var elementosIngredientes: String = ""
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        let c = context as! valoresAlmacen
        etiquetaTamano.setText(String (c.valorTamano))
        etiquetaTipoMasa.setText(String(c.valorTipoMasa))
        etiquetaTipoQueso.setText(String(c.valorTipoQueso))
        UnionIngredientes = c.valorIngredientes
        for i in 0..<UnionIngredientes.count{
            
            if i <= 1{
              elementosIngredientes += UnionIngredientes[i] + ","
              etiquetaIngrediente1.setText(elementosIngredientes)
            }
            else{
                if i == 2{
                    elementosIngredientes = ""
                }
              elementosIngredientes += UnionIngredientes[i] + ","
              etiquetaIngrediente2.setText(elementosIngredientes)
            }
            
        }
        
        print(elementosIngredientes)
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

    @IBAction func pedidoOk() {
    }
    
}

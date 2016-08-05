//
//  detalleIngredientes.swift
//  TareaPedidoPizzaAW
//
//  Created by XrgerX on 4/08/16.
//  Copyright © 2016 XrgerX. All rights reserved.
//

import WatchKit
import Foundation


class detalleIngredientes: WKInterfaceController {

    var jamonConta: Int = 0
    var peperoniConta: Int = 0
    var pavoConta: Int  = 0
    var aceitunaConta: Int = 0
    var pinaConta: Int = 0
    var totalSiguiente: Int = 0
    // String para etiquetas del pedido
    var etiquetaTamano: String = ""
    var etiquetaTipoMasa: String = ""
    var etiquetaTipoQueso: String = ""
    var arregloIngredientes: [String] = []
    
    @IBOutlet var etiquetaSiguiente: WKInterfaceLabel!
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        let c = context as! valoresAlmacen
        etiquetaTamano = String (c.valorTamano)
        etiquetaTipoMasa = String(c.valorTipoMasa)
        etiquetaTipoQueso = String(c.valorTipoQueso)
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

    @IBAction func jamonAction(value: Bool) {
        if value == true {
            jamonConta = 1
            arregloIngredientes.append("Jamon")
        } else {
            jamonConta = 0
            arregloIngredientes.removeAtIndex(arregloIngredientes.indexOf("Jamon")!)
        }
        etiquetaSiguiente.setText("Escoge Ingred.")
        etiquetaSiguiente.setTextColor(UIColor.whiteColor())
    }
    
    @IBAction func peperoniACtion(value: Bool) {
        if value == true {
            peperoniConta = 1
            arregloIngredientes.append("Peperoni")
        } else {
            peperoniConta = 0
            arregloIngredientes.removeAtIndex(arregloIngredientes.indexOf("Peperoni")!)
        }
        etiquetaSiguiente.setText("Escoge Ingred.")
        etiquetaSiguiente.setTextColor(UIColor.whiteColor())
    }
    
    @IBAction func pavoAction(value: Bool) {
        if value == true {
            pavoConta = 1
            arregloIngredientes.append("Pavo")
        } else {
            pavoConta = 0
            arregloIngredientes.removeAtIndex(arregloIngredientes.indexOf("Pavo")!)
        }
        etiquetaSiguiente.setText("Escoge Ingred.")
        etiquetaSiguiente.setTextColor(UIColor.whiteColor())
    }
    
    @IBAction func aceitunaAction(value: Bool) {
        if value == true {
            aceitunaConta = 1
            arregloIngredientes.append("Aceituna")
        } else {
            aceitunaConta = 0
            arregloIngredientes.removeAtIndex(arregloIngredientes.indexOf("Aceituna")!)
        }
        etiquetaSiguiente.setText("Escoge Ingred.")
        etiquetaSiguiente.setTextColor(UIColor.whiteColor())
    }
    
    @IBAction func pinaAction(value: Bool) {
        if value == true {
            pinaConta = 1
            arregloIngredientes.append("Piña")
        } else {
            pinaConta = 0
            arregloIngredientes.removeAtIndex(arregloIngredientes.indexOf("Piña")!)
        }
        etiquetaSiguiente.setText("Escoge Ingred.")
        etiquetaSiguiente.setTextColor(UIColor.whiteColor())
    }
    
    @IBAction func obtieneIngredientes() {
       totalSiguiente = jamonConta + peperoniConta + pavoConta + aceitunaConta + pinaConta
        if totalSiguiente == 0 {
         etiquetaSiguiente.setText("Escoge 1 Elem.")
            etiquetaSiguiente.setTextColor(UIColor.redColor())
        }
        else{
            let valorContexto = valoresAlmacen(vt:etiquetaTamano, vtm: etiquetaTipoMasa, vtq: etiquetaTipoQueso, vi: arregloIngredientes)
            pushControllerWithName("IdentificadorPedido", context: valorContexto)
        }
    }
}

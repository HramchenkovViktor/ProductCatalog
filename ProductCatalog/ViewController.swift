//
//  ViewController.swift
//  ProductCatalog
//
//  Created by Виктор on 03.11.2026.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        loadProducts()
    }
     private func loadProducts() {
         guard let url = Bundle.main.url(
             forResource: "products",
             withExtension: "json"
         ) else {

             print("Файл products.json не найден")
             return

         }
         do {
             let data = try Data(contentsOf: url)

             let response = try JSONDecoder().decode(ProductResponse.self, from: data)

             let products = response.products
             
             
         } catch {
             print ("Ошибка чтения файла: \(error)")
         }
         
    }

}


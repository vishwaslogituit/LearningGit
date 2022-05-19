import UIKit

//var str = "Hello, playground"
import UIKit

//var str = "Hello, playground"
let productsJson = """
                    [
                      {
                        "product_id": 0,
                        "name": "iPhone 11 Clear Case",
                        "price": "38.99"
                      },
                      {
                        "product_id": 1,
                        "name": "Wireless charging pad",
                        "price": "19.99"
                      },
                      {
                        "product_id": 2,
                        "name": "Dual wireless charging pad",
                        "price": "35.99"
                      },
                      {
                        "product_id": 3,
                        "name": "Selfie stick",
                        "price": "14.99"
                      }
                    ]
                  """

struct Product: Decodable  {
    let product_id: Int
    let name: String
    let price: String
}
let products = try! JSONDecoder().decode([Product].self, from: productsJson.data(using: .utf8)!)
print(products)

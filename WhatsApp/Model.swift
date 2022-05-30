//
//  Model.swift
//  WhatsApp
//
//  Created by Евгений Березенцев on 30.05.2022.
//

import Foundation
import UIKit

struct Message: Hashable {
    var contact: String
    var text: String
    var image: UIImage
    let id = UUID()
    
    static func getMessages() -> [Message] {
        return [Message(contact: "Mom", text: "Hello, could you buy sme milk", image: UIImage(named: "Three")!),
                        Message(contact: "Bro", text: "Hi, man, how is it going", image: UIImage(named: "One")!),
                        Message(contact: "Leha", text: "Goog morning, lets watch the movie", image: UIImage(named: "Two")!),
                Message(contact: "Mom", text: "Hello, could you buy sme milk", image: UIImage(named: "Three")!),
                                Message(contact: "Bro", text: "Hi, man, how is it going", image: UIImage(named: "One")!),
                                Message(contact: "Leha", text: "Goog morning, lets watch the movie", image: UIImage(named: "Two")!),
                Message(contact: "Mom", text: "Hello, could you buy sme milk", image: UIImage(named: "Three")!),
                                Message(contact: "Bro", text: "Hi, man, how is it going", image: UIImage(named: "One")!),
                Message(contact: "Leha", text: "Goog morning, lets watch the movie", image: UIImage(named: "Two")!)]
    }
}

//
//  Pop.swift
//  Protocol Oriented Programming
//
//  Created by Noye Samuel on 17/02/2023.
//

import Foundation

class TelephoneClass {
    func call() {
        
    }
    func hangUp(){
        
    }
}

class LandlineClass: TelephoneClass {
    
}

protocol Telephone {
    var phoneNo: String { get set}
    func call()
    func handUp()
}
extension Telephone {
    func call(){
        
    }
    func handUp(){
        
    }
}


protocol Landline: Telephone {
    
}
protocol Cellular: Telephone {
    func sendSMS()
}

protocol Rotaryable {
    func rotaryInput()
}
protocol PushButtonable {
    func buttonInput()
}
protocol Touchable {
    func touchInput()
}


class RotaryPhone: Landline, Rotaryable {
    func rotaryInput() {
        
    }
    
    var phoneNo: String
    
    init(phoneNo: String){
        self.phoneNo = phoneNo
    }
    
}

class PushButtonPhone: Landline, PushButtonable {
    func buttonInput() {
        <#code#>
    }
    
    var phoneNo: String
    
    init(phoneNo: String){
        self.phoneNo = phoneNo
    }
    
}

class NonSmartPhone: Cellular, PushButtonable {
    func sendSMS() {
        <#code#>
    }
    
    func buttonInput() {
        <#code#>
    }
    
    var phoneNo: String
    
    init(phoneNo: String){
        self.phoneNo = phoneNo
    }
    
}

class smartPhone: Cellular, Touchable {
    func touchInput() {
        <#code#>
    }
    
    func sendSMS() {
        <#code#>
    }
    
     var phoneNo: String
    
    init(phoneNo: String){
        self.phoneNo = phoneNo
    }
    
}

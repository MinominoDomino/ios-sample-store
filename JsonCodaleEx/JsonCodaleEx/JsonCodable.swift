//
//  JsonCodable.swift
//  JsonCodaleEx
//
//  Created by Domino on 06/05/2019.
//  Copyright © 2019 MinominoDomino. All rights reserved.
//

import Foundation

//부스트코스 IOS 프로그래밍에서 가져왔습니다.
let jsonString = """
[
{
"name":"하나",
"age":22,
"address_info": {
"country":"대한민국",
"city":"울산"
}
},
{
"name":"주현",
"age":34,
"address_info": {
"country":"대한민국",
"city":"김해"
}
},
{
"name":"영선",
"age":26,
"address_info": {
"country":"대한민국",
"city":"부천"
}
},
{
"name":"미정",
"age":16,
"address_info": {
"country":"대한민국",
"city":"부산"
}
},
{
"name":"은희",
"age":36,
"address_info": {
"country":"대한민국",
"city":"성남"
}
},
{
"name":"현국",
"age":54,
"address_info": {
"country":"프랑스",
"city":"파리"
}
},
{
"name":"현진",
"age":34,
"address_info": {
"country":"미국",
"city":"LA"
}
},
{
"name":"은지",
"age":45,
"address_info": {
"country":"영국",
"city":"런던"
}
},
{
"name":"재명",
"age":24,
"address_info": {
"country":"인도네시아",
"city":"발리"
}
},
{
"name":"민지",
"age":42,
"address_info": {
"country":"중국",
"city":"북경"
}
},
{
"name":"종명",
"age":14,
"address_info": {
"country":"일본",
"city":"도쿄"
}
},
{
"name":"진성",
"age":16,
"address_info": {
"country":"베트남",
"city":"하노이"
}
},
{
"name":"완복",
"age":24,
"address_info": {
"country":"미국",
"city":"하와이"
}
},
{
"name":"미진",
"age":27,
"address_info": {
"country":"대한민국",
"city":"울산"
}
}
]
""".data(using: .utf8)!

struct PersonInfo: Codable {
    let name: String
    let age: Int
    let address: AddressInfo
    
    var infoStr: String {
        return self.name + "(\(self.age))"
    }
    var addressStr: String {
        return self.address.country + " \(self.address.city)"
    }
    
    enum CodingKeys: String, CodingKey {
        case name
        case age
        case address = "address_info"
    }
}

struct AddressInfo: Codable {
    let country: String
    let city: String
}





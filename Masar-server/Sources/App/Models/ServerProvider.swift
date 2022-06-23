//
//  File.swift
//
//
//  Created by Rahaf Naif on 22/06/2022.
//

import Fluent
import Vapor

final class ServiceProvider: Model, Content {
    static let schema = "ServiceProvider"
    
    @ID(key: .id)
    var id: UUID?

    @Field(key: "name")
    var name: String
    
    @Field(key: "email")
    var email : String
    
    @Field(key: "phone")
    var phone : String
    
    @Field(key: "institution")
    var institution : String
    
    @Field(key: "password")
    var password : String

    init() { }

    init(id: UUID? = nil, name: String, email: String, phone: String, institution: String, password: String) {
        self.id = id
        self.name = name
        self.email = email
        self.phone = phone
        self.institution = institution
        self.password = password
    }
}

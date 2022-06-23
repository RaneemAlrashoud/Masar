//
//  File.swift
//
//
//  Created by Rahaf Naif on 23/06/2022.
//

import Foundation
import Fluent
import FluentPostgresDriver

struct CreateServiceProvider: Migration {
    func prepare(on database: Database) -> EventLoopFuture<Void> {
        database.schema("ServiceProviders")
        .id()
        .field("name", .string)
        .field("email", .string)
        .field("phone", .string)
        .field("institution", .string)
        .field("password", .string)
        .create()
    }

    func revert(on database: Database) -> EventLoopFuture<Void>  {
        database.schema("ServiceProviders").delete()
    }
}

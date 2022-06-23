import Fluent
import Vapor

func routes(_ app: Application) throws {
    
    app.post("ServiceProviders") { req -> EventLoopFuture<ServiceProvider> in
        let serviceProvider = try req.content.decode(ServiceProvider.self)
        return serviceProvider.create(on: req.db).map{serviceProvider}
    }
    
}

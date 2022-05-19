//
//  codable.swift
//  openapp_codable
//
//  Created by Vishwas Anandani on 24/03/22.
//

import Foundation

struct RouteInformation: Codable {
    let routeInfo: [RouteInfo]
    let routeTimings: [String: [RouteTiming]]
    //let routeTimings: RouteTimings  // declare as dictionary
}
struct RouteInfo: Codable {
    let id: String
    let name: String
    let source: String
    let tripDuration: String
    let destination: String
    let icon: String
}
/*struct RouteTimings: Codable {
    let r002: [RouteDetails]
    let r005: [RouteDetails]
    let r004: [RouteDetails]
    let r003: [RouteDetails]
}*/
struct RouteTiming:Codable {
    let totalSeats: Int
    let avaiable: Int
    let tripStartTime: String
    
}

//
//  BikeRental.swift
//  BikeRental
//
//  Created by Vishwas Anandani on 28/03/22.
//

import Foundation
struct BikeRental: Codable {
    let data : BikeData
    let last_updated : Int
    let ttl : Int
        
}

struct BikeData: Codable {
    let stations : [Stations]
}

struct Stations: Codable {
    
    let short_name: String
    let has_kiosk : Bool
    let station_id: String
    //let lat: Int
    let region_id: String
    let rental_methods: [String]
    let capacity: Int
    //let eightd_station_services: [String]
    //let lon : Float
    let eightd_has_key_dispenser: Bool
    let legacy_id: String
    let name: String
    let external_id: String
    let rental_uris: RentalUris
    let station_type: String
    let electric_bike_surcharge_waiver: Bool
}

struct RentalUris: Codable {
    let android: String
    let ios: String
}

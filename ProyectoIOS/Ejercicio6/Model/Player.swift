//
//  Player.swift
//  Ejercicio6
//
//  Created by Javi Trujillo on 15/4/21.
//

import Foundation

//Creamos el objeto Player, que será cada jugador del equipo. El protocolo Decodable hace que podamos pasar la estructura a la función y que nos devuelva un json convertido en un objeto

struct Player: Decodable {
    var id: Int
    var sportsDataID: String?
    var status: String?
    var teamID: Int?
    var team: String?
    var jersey: Int?
    var positionCategory: String?
    var position: String?
    var firstName: String?
    var lastName: String?
    var height: Int?
    var weight: Int?
    var birthdate: String?
    var birthCity: String?
    var birthState: String?
    var birthCountry: String?
    var highSchool: String?
    var college: String?
    var salary: Int?
    var photoUrl: String?
    var experience: Int?
    var sportRadarPlayerID: String?
    var rotoworldPlayerID: Int?
    var rotoWirePlayerID: Int?
    var fantasyAlarmPlayerID: Int?
    var statsPlayerID: Int?
    var sportsDirectPlayerID: Int?
    var xmlTeamPlayerID: Int?
    var injuryStatus: String?
    var injuryBodyPart: String?
    var injuryStartDate: String?
    var injuryNotes: String?
    var fanDuelPlayerID: Int?
    var draftKingsPlayerID: Int?
    var yahooPlayerID: Int?
    var fanDuelName: String?
    var draftKingsName: String?
    var yahooName: String?
    var depthChartPosition: String?
    var depthChartOrder: Int?
    var globalTeamID: Int?
    var fantasyDraftName: String?
    var fantasyDraftPlayerID: Int?
    var usaTodayPlayerID: Int?
    var usaTodayHeadshotUrl: String?
    var usaTodayHeadshotNoBackgroundUrl: String?
    var usaTodayHeadshotUpdated: String?
    var usaTodayHeadshotNoBackgroundUpdated: String?
    var nbaDotComPlayerID: Int?
    
    //Esto es para que interprete las variables como están escritas en el json original
    enum CodingKeys: String, CodingKey {
        case id = "PlayerID"
        case sportsDataID = "SportsDataID"
        case status = "Status"
        case teamID = "TeamID"
        case team = "Team"
        case jersey = "Jersey"
        case positionCategory = "PositionCategory"
        case position = "Position"
        case firstName = "FirstName"
        case lastName = "LastName"
        case height = "Height"
        case weight = "Weight"
        case birthdate = "BirthDate"
        case birthCity = "BirthCity"
        case birthState = "BirthState"
        case birthCountry = "BirthCountry"
        case highSchool = "HighSchool"
        case college = "College"
        case salary = "Salary"
        case photoUrl = "PhotoUrl"
        case experience = "Experience"
        case sportRadarPlayerID = "SportRadarPlayerID"
        case rotoworldPlayerID = "RotoworldPlayerID"
        case rotoWirePlayerID = "RotoWirePlayerID"
        case fantasyAlarmPlayerID = "FantasyAlarmPlayerID"
        case statsPlayerID = "StatsPlayerID"
        case sportsDirectPlayerID = "SportsDirectPlayerID"
        case xmlTeamPlayerID = "XmlTeamPlayerID"
        case injuryStatus = "InjuryStatus"
        case injuryBodyPart = "InjuryBodyPart"
        case injuryStartDate = "InjuryStartDate"
        case injuryNotes = "InjuryNotes"
        case fanDuelPlayerID = "FanDuelPlayerID"
        case draftKingsPlayerID = "DraftKingsPlayerID"
        case yahooPlayerID = "YahooPlayerID"
        case fanDuelName = "FanDuelName"
        case draftKingsName = "DraftKingsName"
        case yahooName = "YahooName"
        case depthChartPosition = "DepthChartPosition"
        case depthChartOrder = "DepthChartOrder"
        case globalTeamID = "GlobalTeamID"
        case fantasyDraftName = "FantasyDraftName"
        case fantasyDraftPlayerID = "FantasyDraftPlayerID"
        case usaTodayPlayerID = "UsaTodayPlayerID"
        case usaTodayHeadshotUrl = "UsaTodayHeadshotUrl"
        case usaTodayHeadshotNoBackgroundUrl = "UsaTodayHeadshotNoBackgroundUrl"
        case usaTodayHeadshotUpdated = "UsaTodayHeadshotUpdated"
        case usaTodayHeadshotNoBackgroundUpdated = "UsaTodayHeadshotNoBackgroundUpdated"
        case nbaDotComPlayerID = "NbaDotComPlayerID"
    }
}

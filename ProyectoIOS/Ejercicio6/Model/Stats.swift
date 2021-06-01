//
//  Stats.swift
//  Ejercicio6
//
//  Created by Javi Trujillo on 21/4/21.
//

import Foundation

//Creamos el objeto Stats, que será cada estadística del jiugador. El protocolo Decodable hace que podamos pasar la estructura a la función y que nos devuelva un json convertido en un objeto

struct Stats: Decodable {
    var statID: Int?
    var teamID: Int?
    var playerID: Int?
    var seasonType: Int?
    var season: Int?
    var name: String?
    var team: String?
    var position: String?
    var started: Int?
    var globalTeamID: Int?
    var updated: String?
    var games: Int?
    var fantasyPoints: Float?
    var minutes: Int?
    var seconds: Int?
    var fieldGoalsMade: Float?
    var fieldGoalsAttempted: Float?
    var fieldGoalsPercentage: Float?
    var effectiveFieldGoalsPercentage: Float?
    var twoPointersMade: Float?
    var twoPointersAttempted: Float?
    var twoPointersPercentage: Float?
    var threePointersMade: Float?
    var threePointersAttempted: Float?
    var threePointersPercentage: Float?
    var freeThrowsMade: Float?
    var freeThrowsAttempted: Float?
    var freeThrowsPercentage: Float?
    var offensiveRebounds: Float?
    var defensiveRebounds: Float?
    var rebounds: Float?
    var offensiveReboundsPercentage: Float?
    var defensiveReboundsPercentage: Float?
    var totalReboundsPercentage: Float?
    var assists: Float?
    var steals: Float?
    var blockedShots: Float?
    var turnovers: Float?
    var personalFouls: Float?
    var points: Float?
    var trueShootingAttempts: Float?
    var trueShootingPercentage: Float?
    var playerEfficiencyRating: Float?
    var assistsPercentage: Float?
    var stealsPercentage: Float?
    var blocksPercentage: Float?
    var turnOversPercentage: Float?
    var usageRatePercentage: Float?
    var fantasyPointsFanDuel: Float?
    var fantasyPointsDraftKings: Float?
    var fantasyPointsYahoo: Float?
    var plusMinus: Float?
    var doubleDoubles: Float?
    var tripleDoubles: Float?
    var fantasyPointsFantasyDraft: Float?
    var isClosed: Bool?
    var lineupConfirmed: String?
    var lineupStatus: String?
    
    //Esto es para que interprete las variables como están escritas en el json original
    enum CodingKeys: String, CodingKey {
        case statID = "StatID"
        case teamID = "TeamID"
        case playerID = "PlayerID"
        case seasonType = "SeasonType"
        case season = "Season"
        case name = "Name"
        case team = "Team"
        case position = "Position"
        case started = "Started"
        case globalTeamID = "GlobalTeamID"
        case updated = "Updated"
        case games = "Games"
        case fantasyPoints = "FantasyPoints"
        case minutes = "Minutes"
        case seconds = "Seconds"
        case fieldGoalsMade = "FieldGoalsMade"
        case fieldGoalsAttempted = "FieldGoalsAttempted"
        case fieldGoalsPercentage = "FieldGoalsPercentage"
        case effectiveFieldGoalsPercentage = "EffectiveFieldGoalsPercentage"
        case twoPointersMade = "TwoPointersMade"
        case twoPointersAttempted = "TwoPointersAttempted"
        case twoPointersPercentage = "TwoPointersPercentage"
        case threePointersMade = "ThreePointersMade"
        case threePointersAttempted = "ThreePointersAttempted"
        case threePointersPercentage = "ThreePointersPercentage"
        case freeThrowsMade = "FreeThrowsMade"
        case freeThrowsAttempted = "FreeThrowsAttempted"
        case freeThrowsPercentage = "FreeThrowsPercentage"
        case offensiveRebounds = "OffensiveRebounds"
        case defensiveRebounds = "DefensiveRebounds"
        case rebounds = "Rebounds"
        case offensiveReboundsPercentage = "OffensiveReboundsPercentage"
        case defensiveReboundsPercentage = "DefensiveReboundsPercentage"
        case totalReboundsPercentage = "TotalReboundsPercentage"
        case assists = "Assists"
        case steals = "Steals"
        case blockedShots = "BlockedShots"
        case turnovers = "Turnovers"
        case personalFouls = "PersonalFouls"
        case points = "Points"
        case trueShootingAttempts = "TrueShootingAttempts"
        case trueShootingPercentage = "TrueShootingPercentage"
        case playerEfficiencyRating = "PlayerEfficiencyRating"
        case assistsPercentage = "AssistsPercentage"
        case stealsPercentage = "StealsPercentage"
        case blocksPercentage = "BlocksPercentage"
        case turnOversPercentage = "TurnOversPercentage"
        case usageRatePercentage = "UsageRatePercentage"
        case fantasyPointsFanDuel = "FantasyPointsFanDuel"
        case fantasyPointsDraftKings = "FantasyPointsDraftKings"
        case fantasyPointsYahoo = "FantasyPointsYahoo"
        case plusMinus = "PlusMinus"
        case doubleDoubles = "DoubleDoubles"
        case tripleDoubles = "TripleDoubles"
        case fantasyPointsFantasyDraft = "FantasyPointsFantasyDraft"
        case isClosed = "IsClosed"
        case lineupConfirmed = "LineupConfirmed"
        case lineupStatus = "LineupStatus"
    }
}

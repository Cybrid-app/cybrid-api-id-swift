//
// PostInternalOrganizationApplicationIdpModel.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

@objc public class PostInternalOrganizationApplicationIdpModel: NSObject, Codable, JSONEncodable {

    public enum ScopesIdpModel: String, Codable, CaseIterable, CaseIterableDefaultsLast {
        case organizationsRead = "organizations:read"
        case organizationsWrite = "organizations:write"
        case banksRead = "banks:read"
        case banksWrite = "banks:write"
        case banksExecute = "banks:execute"
        case accountsRead = "accounts:read"
        case accountsExecute = "accounts:execute"
        case customersRead = "customers:read"
        case customersWrite = "customers:write"
        case customersExecute = "customers:execute"
        case pricesRead = "prices:read"
        case quotesExecute = "quotes:execute"
        case quotesRead = "quotes:read"
        case tradesExecute = "trades:execute"
        case tradesRead = "trades:read"
        case rewardsExecute = "rewards:execute"
        case rewardsRead = "rewards:read"
        case externalBankAccountsRead = "external_bank_accounts:read"
        case externalBankAccountsExecute = "external_bank_accounts:execute"
        case unknownDefaultOpenApi = "unknown_default_open_api"
    }
    /** Name for the organization application. */
    public var name: String
    /** Organization guid the application is associated to. */
    public var ownerGuid: String
    /** List of the scopes requested for the OAuth2 application. */
    public var scopes: Set<ScopesIdpModel>

    public init(name: String, ownerGuid: String, scopes: Set<ScopesIdpModel>) {
        self.name = name
        self.ownerGuid = ownerGuid
        self.scopes = scopes
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case name
        case ownerGuid = "owner_guid"
        case scopes
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(name, forKey: .name)
        try container.encode(ownerGuid, forKey: .ownerGuid)
        try container.encode(scopes, forKey: .scopes)
    }
}


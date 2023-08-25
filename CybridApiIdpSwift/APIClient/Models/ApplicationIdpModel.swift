//
// ApplicationIdpModel.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

@objc public class ApplicationIdpModel: NSObject, Codable, JSONEncodable {

    public enum ScopesIdpModel: String, Codable, CaseIterable, CaseIterableDefaultsLast {
        case accountsExecute = "accounts:execute"
        case accountsRead = "accounts:read"
        case bankApplicationsExecute = "bank_applications:execute"
        case banksExecute = "banks:execute"
        case banksRead = "banks:read"
        case banksWrite = "banks:write"
        case customersExecute = "customers:execute"
        case customersRead = "customers:read"
        case customersWrite = "customers:write"
        case depositAddressesExecute = "deposit_addresses:execute"
        case depositAddressesRead = "deposit_addresses:read"
        case externalBankAccountsExecute = "external_bank_accounts:execute"
        case externalBankAccountsRead = "external_bank_accounts:read"
        case externalBankAccountsWrite = "external_bank_accounts:write"
        case externalWalletsExecute = "external_wallets:execute"
        case externalWalletsRead = "external_wallets:read"
        case organizationApplicationsExecute = "organization_applications:execute"
        case organizationsRead = "organizations:read"
        case organizationsWrite = "organizations:write"
        case pricesRead = "prices:read"
        case quotesExecute = "quotes:execute"
        case quotesRead = "quotes:read"
        case rewardsExecute = "rewards:execute"
        case rewardsRead = "rewards:read"
        case tradesExecute = "trades:execute"
        case tradesRead = "trades:read"
        case transfersExecute = "transfers:execute"
        case transfersRead = "transfers:read"
        case workflowsExecute = "workflows:execute"
        case workflowsRead = "workflows:read"
        case unknownDefaultOpenApi = "unknown_default_open_api"
    }
    /** Name provided for the OAuth2 application. */
    public var name: String
    /** The OAuth2 application's client ID. */
    public var clientId: String
    /** List of the scopes granted to the OAuth2 application. */
    public var scopes: [ScopesIdpModel]
    /** ISO8601 datetime the application was created at. */
    public var createdAt: Date

    public init(name: String, clientId: String, scopes: [ScopesIdpModel], createdAt: Date) {
        self.name = name
        self.clientId = clientId
        self.scopes = scopes
        self.createdAt = createdAt
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case name
        case clientId = "client_id"
        case scopes
        case createdAt = "created_at"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(name, forKey: .name)
        try container.encode(clientId, forKey: .clientId)
        try container.encode(scopes, forKey: .scopes)
        try container.encode(createdAt, forKey: .createdAt)
    }
}


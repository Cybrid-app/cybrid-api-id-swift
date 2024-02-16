//
// PostCustomerTokenIdpModel.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

@objc public class PostCustomerTokenIdpModel: NSObject, Codable, JSONEncodable {

    public enum ScopesIdpModel: String, Codable, CaseIterable, CaseIterableDefaultsLast {
        case customersRead = "customers:read"
        case customersWrite = "customers:write"
        case accountsRead = "accounts:read"
        case accountsExecute = "accounts:execute"
        case pricesRead = "prices:read"
        case quotesRead = "quotes:read"
        case quotesExecute = "quotes:execute"
        case tradesRead = "trades:read"
        case tradesExecute = "trades:execute"
        case transfersRead = "transfers:read"
        case transfersExecute = "transfers:execute"
        case externalBankAccountsRead = "external_bank_accounts:read"
        case externalBankAccountsWrite = "external_bank_accounts:write"
        case externalBankAccountsExecute = "external_bank_accounts:execute"
        case externalWalletsRead = "external_wallets:read"
        case externalWalletsExecute = "external_wallets:execute"
        case workflowsRead = "workflows:read"
        case workflowsExecute = "workflows:execute"
        case depositAddressesRead = "deposit_addresses:read"
        case depositAddressesExecute = "deposit_addresses:execute"
        case depositBankAccountsRead = "deposit_bank_accounts:read"
        case depositBankAccountsExecute = "deposit_bank_accounts:execute"
        case invoicesRead = "invoices:read"
        case invoicesWrite = "invoices:write"
        case invoicesExecute = "invoices:execute"
        case unknownDefaultOpenApi = "unknown_default_open_api"
    }
    /** Customer guid the access token is being generated for. */
    public var customerGuid: String
    /** List of the scopes requested for the access token. */
    public var scopes: Set<ScopesIdpModel>

    public init(customerGuid: String, scopes: Set<ScopesIdpModel>) {
        self.customerGuid = customerGuid
        self.scopes = scopes
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case customerGuid = "customer_guid"
        case scopes
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(customerGuid, forKey: .customerGuid)
        try container.encode(scopes, forKey: .scopes)
    }
}


//
// UserIdpModel.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

@objc public class UserIdpModel: NSObject, Codable, JSONEncodable {

    /** Auto-generated unique identifier for the user. */
    public var guid: String?
    /** The user's username. */
    public var username: String?
    /** The user's email address. */
    public var email: String?
    /** ISO8601 datetime the application was created at. */
    public var createdAt: Date?

    public init(guid: String? = nil, username: String? = nil, email: String? = nil, createdAt: Date? = nil) {
        self.guid = guid
        self.username = username
        self.email = email
        self.createdAt = createdAt
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case guid
        case username
        case email
        case createdAt = "created_at"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(guid, forKey: .guid)
        try container.encodeIfPresent(username, forKey: .username)
        try container.encodeIfPresent(email, forKey: .email)
        try container.encodeIfPresent(createdAt, forKey: .createdAt)
    }
}


//
// CartDisconnect200ResponseResult.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct CartDisconnect200ResponseResult: Codable, JSONEncodable, Hashable {

    public var connection: String?

    public init(connection: String? = nil) {
        self.connection = connection
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case connection
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(connection, forKey: .connection)
    }
}


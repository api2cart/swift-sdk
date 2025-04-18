//
// CustomerDelete200ResponseResult.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct CustomerDelete200ResponseResult: Codable, JSONEncodable, Hashable {

    public var deleteItems: Int?

    public init(deleteItems: Int? = nil) {
        self.deleteItems = deleteItems
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case deleteItems = "delete_items"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(deleteItems, forKey: .deleteItems)
    }
}


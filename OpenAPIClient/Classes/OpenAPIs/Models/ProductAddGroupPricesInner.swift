//
// ProductAddGroupPricesInner.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct ProductAddGroupPricesInner: Codable, JSONEncodable, Hashable {

    public var groupId: String?
    public var price: Double?

    public init(groupId: String? = nil, price: Double? = nil) {
        self.groupId = groupId
        self.price = price
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case groupId = "group_id"
        case price
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(groupId, forKey: .groupId)
        try container.encodeIfPresent(price, forKey: .price)
    }
}


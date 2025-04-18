//
// ProductPriceUpdateGroupPricesInner.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct ProductPriceUpdateGroupPricesInner: Codable, JSONEncodable, Hashable {

    public var id: Int?
    public var groupId: String?
    public var price: Double?

    public init(id: Int? = nil, groupId: String? = nil, price: Double? = nil) {
        self.id = id
        self.groupId = groupId
        self.price = price
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case groupId = "group_id"
        case price
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(id, forKey: .id)
        try container.encodeIfPresent(groupId, forKey: .groupId)
        try container.encodeIfPresent(price, forKey: .price)
    }
}


@available(iOS 13, tvOS 13, watchOS 6, macOS 10.15, *)
extension ProductPriceUpdateGroupPricesInner: Identifiable {}

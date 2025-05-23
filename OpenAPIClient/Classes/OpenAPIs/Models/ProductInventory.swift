//
// ProductInventory.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct ProductInventory: Codable, JSONEncodable, Hashable {

    public var warehouseId: String?
    public var quantity: Double?
    public var inStock: Bool?
    public var priority: Int?
    public var additionalFields: AnyCodable?
    public var customFields: AnyCodable?

    public init(warehouseId: String? = nil, quantity: Double? = nil, inStock: Bool? = nil, priority: Int? = nil, additionalFields: AnyCodable? = nil, customFields: AnyCodable? = nil) {
        self.warehouseId = warehouseId
        self.quantity = quantity
        self.inStock = inStock
        self.priority = priority
        self.additionalFields = additionalFields
        self.customFields = customFields
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case warehouseId = "warehouse_id"
        case quantity
        case inStock = "in_stock"
        case priority
        case additionalFields = "additional_fields"
        case customFields = "custom_fields"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(warehouseId, forKey: .warehouseId)
        try container.encodeIfPresent(quantity, forKey: .quantity)
        try container.encodeIfPresent(inStock, forKey: .inStock)
        try container.encodeIfPresent(priority, forKey: .priority)
        try container.encodeIfPresent(additionalFields, forKey: .additionalFields)
        try container.encodeIfPresent(customFields, forKey: .customFields)
    }
}


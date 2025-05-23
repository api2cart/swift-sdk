//
// Shipment.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct Shipment: Codable, JSONEncodable, Hashable {

    public var id: String?
    public var orderId: String?
    public var name: String?
    public var warehouseId: String?
    public var shipmentProvider: String?
    public var trackingNumbers: [ShipmentTrackingNumber]?
    public var createdAt: A2CDateTime?
    public var modifiedTime: A2CDateTime?
    public var items: [ShipmentItem]?
    public var isShipped: Bool?
    public var deliveredAt: A2CDateTime?
    public var additionalFields: AnyCodable?
    public var customFields: AnyCodable?

    public init(id: String? = nil, orderId: String? = nil, name: String? = nil, warehouseId: String? = nil, shipmentProvider: String? = nil, trackingNumbers: [ShipmentTrackingNumber]? = nil, createdAt: A2CDateTime? = nil, modifiedTime: A2CDateTime? = nil, items: [ShipmentItem]? = nil, isShipped: Bool? = nil, deliveredAt: A2CDateTime? = nil, additionalFields: AnyCodable? = nil, customFields: AnyCodable? = nil) {
        self.id = id
        self.orderId = orderId
        self.name = name
        self.warehouseId = warehouseId
        self.shipmentProvider = shipmentProvider
        self.trackingNumbers = trackingNumbers
        self.createdAt = createdAt
        self.modifiedTime = modifiedTime
        self.items = items
        self.isShipped = isShipped
        self.deliveredAt = deliveredAt
        self.additionalFields = additionalFields
        self.customFields = customFields
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case orderId = "order_id"
        case name
        case warehouseId = "warehouse_id"
        case shipmentProvider = "shipment_provider"
        case trackingNumbers = "tracking_numbers"
        case createdAt = "created_at"
        case modifiedTime = "modified_time"
        case items
        case isShipped = "is_shipped"
        case deliveredAt = "delivered_at"
        case additionalFields = "additional_fields"
        case customFields = "custom_fields"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(id, forKey: .id)
        try container.encodeIfPresent(orderId, forKey: .orderId)
        try container.encodeIfPresent(name, forKey: .name)
        try container.encodeIfPresent(warehouseId, forKey: .warehouseId)
        try container.encodeIfPresent(shipmentProvider, forKey: .shipmentProvider)
        try container.encodeIfPresent(trackingNumbers, forKey: .trackingNumbers)
        try container.encodeIfPresent(createdAt, forKey: .createdAt)
        try container.encodeIfPresent(modifiedTime, forKey: .modifiedTime)
        try container.encodeIfPresent(items, forKey: .items)
        try container.encodeIfPresent(isShipped, forKey: .isShipped)
        try container.encodeIfPresent(deliveredAt, forKey: .deliveredAt)
        try container.encodeIfPresent(additionalFields, forKey: .additionalFields)
        try container.encodeIfPresent(customFields, forKey: .customFields)
    }
}


@available(iOS 13, tvOS 13, watchOS 6, macOS 10.15, *)
extension Shipment: Identifiable {}

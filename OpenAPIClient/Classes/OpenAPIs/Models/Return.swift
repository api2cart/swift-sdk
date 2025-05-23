//
// Return.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct Return: Codable, JSONEncodable, Hashable {

    public var id: String?
    public var name: String?
    public var orderId: String?
    public var customerId: String?
    public var storeId: String?
    public var createdAt: String?
    public var modifiedAt: String?
    public var status: ReturnStatus?
    public var orderProducts: [ReturnOrderProduct]?
    public var comment: String?
    public var staffNote: String?
    public var additionalFields: AnyCodable?
    public var customFields: AnyCodable?

    public init(id: String? = nil, name: String? = nil, orderId: String? = nil, customerId: String? = nil, storeId: String? = nil, createdAt: String? = nil, modifiedAt: String? = nil, status: ReturnStatus? = nil, orderProducts: [ReturnOrderProduct]? = nil, comment: String? = nil, staffNote: String? = nil, additionalFields: AnyCodable? = nil, customFields: AnyCodable? = nil) {
        self.id = id
        self.name = name
        self.orderId = orderId
        self.customerId = customerId
        self.storeId = storeId
        self.createdAt = createdAt
        self.modifiedAt = modifiedAt
        self.status = status
        self.orderProducts = orderProducts
        self.comment = comment
        self.staffNote = staffNote
        self.additionalFields = additionalFields
        self.customFields = customFields
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case name
        case orderId = "order_id"
        case customerId = "customer_id"
        case storeId = "store_id"
        case createdAt = "created_at"
        case modifiedAt = "modified_at"
        case status
        case orderProducts = "order_products"
        case comment
        case staffNote = "staff_note"
        case additionalFields = "additional_fields"
        case customFields = "custom_fields"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(id, forKey: .id)
        try container.encodeIfPresent(name, forKey: .name)
        try container.encodeIfPresent(orderId, forKey: .orderId)
        try container.encodeIfPresent(customerId, forKey: .customerId)
        try container.encodeIfPresent(storeId, forKey: .storeId)
        try container.encodeIfPresent(createdAt, forKey: .createdAt)
        try container.encodeIfPresent(modifiedAt, forKey: .modifiedAt)
        try container.encodeIfPresent(status, forKey: .status)
        try container.encodeIfPresent(orderProducts, forKey: .orderProducts)
        try container.encodeIfPresent(comment, forKey: .comment)
        try container.encodeIfPresent(staffNote, forKey: .staffNote)
        try container.encodeIfPresent(additionalFields, forKey: .additionalFields)
        try container.encodeIfPresent(customFields, forKey: .customFields)
    }
}


@available(iOS 13, tvOS 13, watchOS 6, macOS 10.15, *)
extension Return: Identifiable {}

//
// Basket.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct Basket: Codable, JSONEncodable, Hashable {

    public var id: String?
    public var customer: BaseCustomer?
    public var basketUrl: String?
    public var createdAt: A2CDateTime?
    public var modifiedAt: A2CDateTime?
    public var currency: Currency?
    public var basketProducts: [BasketItem]?
    public var additionalFields: AnyCodable?
    public var customFields: AnyCodable?

    public init(id: String? = nil, customer: BaseCustomer? = nil, basketUrl: String? = nil, createdAt: A2CDateTime? = nil, modifiedAt: A2CDateTime? = nil, currency: Currency? = nil, basketProducts: [BasketItem]? = nil, additionalFields: AnyCodable? = nil, customFields: AnyCodable? = nil) {
        self.id = id
        self.customer = customer
        self.basketUrl = basketUrl
        self.createdAt = createdAt
        self.modifiedAt = modifiedAt
        self.currency = currency
        self.basketProducts = basketProducts
        self.additionalFields = additionalFields
        self.customFields = customFields
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case customer
        case basketUrl = "basket_url"
        case createdAt = "created_at"
        case modifiedAt = "modified_at"
        case currency
        case basketProducts = "basket_products"
        case additionalFields = "additional_fields"
        case customFields = "custom_fields"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(id, forKey: .id)
        try container.encodeIfPresent(customer, forKey: .customer)
        try container.encodeIfPresent(basketUrl, forKey: .basketUrl)
        try container.encodeIfPresent(createdAt, forKey: .createdAt)
        try container.encodeIfPresent(modifiedAt, forKey: .modifiedAt)
        try container.encodeIfPresent(currency, forKey: .currency)
        try container.encodeIfPresent(basketProducts, forKey: .basketProducts)
        try container.encodeIfPresent(additionalFields, forKey: .additionalFields)
        try container.encodeIfPresent(customFields, forKey: .customFields)
    }
}


@available(iOS 13, tvOS 13, watchOS 6, macOS 10.15, *)
extension Basket: Identifiable {}

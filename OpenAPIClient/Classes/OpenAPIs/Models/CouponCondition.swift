//
// CouponCondition.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct CouponCondition: Codable, JSONEncodable, Hashable {

    public var id: String?
    public var entity: String?
    public var matchItems: String?
    public var key: String?
    public var _operator: String?
    public var value: String?
    public var logicOperator: String?
    public var subConditions: [CouponCondition]?
    public var additionalFields: AnyCodable?
    public var customFields: AnyCodable?

    public init(id: String? = nil, entity: String? = nil, matchItems: String? = nil, key: String? = nil, _operator: String? = nil, value: String? = nil, logicOperator: String? = nil, subConditions: [CouponCondition]? = nil, additionalFields: AnyCodable? = nil, customFields: AnyCodable? = nil) {
        self.id = id
        self.entity = entity
        self.matchItems = matchItems
        self.key = key
        self._operator = _operator
        self.value = value
        self.logicOperator = logicOperator
        self.subConditions = subConditions
        self.additionalFields = additionalFields
        self.customFields = customFields
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case entity
        case matchItems = "match_items"
        case key
        case _operator = "operator"
        case value
        case logicOperator = "logic_operator"
        case subConditions = "sub-conditions"
        case additionalFields = "additional_fields"
        case customFields = "custom_fields"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(id, forKey: .id)
        try container.encodeIfPresent(entity, forKey: .entity)
        try container.encodeIfPresent(matchItems, forKey: .matchItems)
        try container.encodeIfPresent(key, forKey: .key)
        try container.encodeIfPresent(_operator, forKey: ._operator)
        try container.encodeIfPresent(value, forKey: .value)
        try container.encodeIfPresent(logicOperator, forKey: .logicOperator)
        try container.encodeIfPresent(subConditions, forKey: .subConditions)
        try container.encodeIfPresent(additionalFields, forKey: .additionalFields)
        try container.encodeIfPresent(customFields, forKey: .customFields)
    }
}


@available(iOS 13, tvOS 13, watchOS 6, macOS 10.15, *)
extension CouponCondition: Identifiable {}

//
// TaxClassZipCodesRange.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct TaxClassZipCodesRange: Codable, JSONEncodable, Hashable {

    public var from: String?
    public var to: String?
    public var additionalFields: AnyCodable?
    public var customFields: AnyCodable?

    public init(from: String? = nil, to: String? = nil, additionalFields: AnyCodable? = nil, customFields: AnyCodable? = nil) {
        self.from = from
        self.to = to
        self.additionalFields = additionalFields
        self.customFields = customFields
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case from
        case to
        case additionalFields = "additional_fields"
        case customFields = "custom_fields"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(from, forKey: .from)
        try container.encodeIfPresent(to, forKey: .to)
        try container.encodeIfPresent(additionalFields, forKey: .additionalFields)
        try container.encodeIfPresent(customFields, forKey: .customFields)
    }
}


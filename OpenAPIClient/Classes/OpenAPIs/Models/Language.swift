//
// Language.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct Language: Codable, JSONEncodable, Hashable {

    public var id: String?
    public var isoCode: String?
    public var name: String?
    public var additionalFields: AnyCodable?
    public var customFields: AnyCodable?

    public init(id: String? = nil, isoCode: String? = nil, name: String? = nil, additionalFields: AnyCodable? = nil, customFields: AnyCodable? = nil) {
        self.id = id
        self.isoCode = isoCode
        self.name = name
        self.additionalFields = additionalFields
        self.customFields = customFields
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case isoCode = "iso_code"
        case name
        case additionalFields = "additional_fields"
        case customFields = "custom_fields"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(id, forKey: .id)
        try container.encodeIfPresent(isoCode, forKey: .isoCode)
        try container.encodeIfPresent(name, forKey: .name)
        try container.encodeIfPresent(additionalFields, forKey: .additionalFields)
        try container.encodeIfPresent(customFields, forKey: .customFields)
    }
}


@available(iOS 13, tvOS 13, watchOS 6, macOS 10.15, *)
extension Language: Identifiable {}

//
// CategoryFind200ResponseResultCategoryInner.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct CategoryFind200ResponseResultCategoryInner: Codable, JSONEncodable, Hashable {

    public var id: String?
    public var name: String?
    public var description: String?

    public init(id: String? = nil, name: String? = nil, description: String? = nil) {
        self.id = id
        self.name = name
        self.description = description
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case name
        case description
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(id, forKey: .id)
        try container.encodeIfPresent(name, forKey: .name)
        try container.encodeIfPresent(description, forKey: .description)
    }
}


@available(iOS 13, tvOS 13, watchOS 6, macOS 10.15, *)
extension CategoryFind200ResponseResultCategoryInner: Identifiable {}

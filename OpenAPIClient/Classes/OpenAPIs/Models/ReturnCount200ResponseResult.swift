//
// ReturnCount200ResponseResult.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct ReturnCount200ResponseResult: Codable, JSONEncodable, Hashable {

    public var returnsCount: Int?

    public init(returnsCount: Int? = nil) {
        self.returnsCount = returnsCount
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case returnsCount = "returns_count"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(returnsCount, forKey: .returnsCount)
    }
}


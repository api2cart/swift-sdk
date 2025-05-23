//
// CartGiftcardAdd200ResponseResult.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct CartGiftcardAdd200ResponseResult: Codable, JSONEncodable, Hashable {

    public var id: String?
    public var code: String?

    public init(id: String? = nil, code: String? = nil) {
        self.id = id
        self.code = code
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case code
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(id, forKey: .id)
        try container.encodeIfPresent(code, forKey: .code)
    }
}


@available(iOS 13, tvOS 13, watchOS 6, macOS 10.15, *)
extension CartGiftcardAdd200ResponseResult: Identifiable {}

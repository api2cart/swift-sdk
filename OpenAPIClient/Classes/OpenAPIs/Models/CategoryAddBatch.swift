//
// CategoryAddBatch.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct CategoryAddBatch: Codable, JSONEncodable, Hashable {

    public static let payloadRule = ArrayRule(minItems: 1, maxItems: 250, uniqueItems: false)
    /** Contains an array of categories objects. The list of properties may vary depending on the specific platform. */
    public var payload: [CategoryAddBatchPayloadInner]

    public init(payload: [CategoryAddBatchPayloadInner]) {
        self.payload = payload
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case payload
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(payload, forKey: .payload)
    }
}


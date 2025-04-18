//
// CartGiftcardCount200ResponseResult.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct CartGiftcardCount200ResponseResult: Codable, JSONEncodable, Hashable {

    public var giftCardsCount: String?

    public init(giftCardsCount: String? = nil) {
        self.giftCardsCount = giftCardsCount
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case giftCardsCount = "gift_cards_count"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(giftCardsCount, forKey: .giftCardsCount)
    }
}


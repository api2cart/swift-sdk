//
// ReturnStatusList200ResponseResult.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct ReturnStatusList200ResponseResult: Codable, JSONEncodable, Hashable {

    public var returnStatuses: [OrderFinancialStatusList200ResponseResultOrderFinancialStatusesInner]?

    public init(returnStatuses: [OrderFinancialStatusList200ResponseResultOrderFinancialStatusesInner]? = nil) {
        self.returnStatuses = returnStatuses
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case returnStatuses = "return_statuses"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(returnStatuses, forKey: .returnStatuses)
    }
}

